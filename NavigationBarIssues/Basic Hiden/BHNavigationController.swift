//
//  BHNavigationController.swift
//  NavigationBarIssues
//
//  Created by 姜伦 on 2018/5/14.
//  Copyright © 2018年 JianglunPro. All rights reserved.
//

/*
 如果调用系统方法隐藏了导航栏，则该页面的侧滑返回手势也会没有
 解决办法是, 将这个屏幕边缘手势的代理设置为自己, 让自己控制手势的开关
 核心代码:
 self.interactivePopGestureRecognizer?.delegate = self
 func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
    return true
 }
 其他的代码都是一些防止 bug 的条件控制
 */

import UIKit

class BHNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 将手势的代理设为自己
        self.interactivePopGestureRecognizer?.delegate = self
        self.delegate = self
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if animated {
            self.interactivePopGestureRecognizer?.isEnabled = false
        }
        super.pushViewController(viewController, animated: animated)
    }
    
    override func popToViewController(_ viewController: UIViewController, animated: Bool) -> [UIViewController]? {
        if animated {
            self.interactivePopGestureRecognizer?.isEnabled = false
        }
        return super.popToViewController(viewController, animated: animated)
    }
    
    override func popToRootViewController(animated: Bool) -> [UIViewController]? {
        if animated {
            self.interactivePopGestureRecognizer?.isEnabled = false
        }
        return super.popToRootViewController(animated: animated)
    }

}

extension BHNavigationController: UINavigationControllerDelegate {
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        self.interactivePopGestureRecognizer?.isEnabled = true
    }
}

// 在这个代理方法中控制手势的开关
extension BHNavigationController: UIGestureRecognizerDelegate {
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        if gestureRecognizer == self.interactivePopGestureRecognizer && self.viewControllers.count < 2 {
            return false
        }
        return true
    }
}
