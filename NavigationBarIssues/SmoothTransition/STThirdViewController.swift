//
//  STThirdViewController.swift
//  NavigationBarIssues
//
//  Created by 姜伦 on 2018/5/14.
//  Copyright © 2018年 JianglunPro. All rights reserved.
//

import UIKit

class STThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // amazing!!!
        // the view's content inset is correct automatically
        // and the screen edge gusture is still enable
        
        // 如果 navigationBar.alpha = 0, 页面的 contentInset 会被'正确'的设置为 0
        // 但是不会影响屏幕边缘手势的使用
        
        transitionCoordinator?.animate(alongsideTransition: { (context) in
            self.navigationController?.navigationBar.alpha = 0
            self.navigationController?.navigationBar.barTintColor = .white
        }, completion: nil)
    }
    
    
    @IBAction func pop(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }

}
