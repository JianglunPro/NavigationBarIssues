//
//  FBBaseViewController.swift
//  NavigationBarIssues
//
//  Created by 姜伦 on 2018/5/14.
//  Copyright © 2018年 JianglunPro. All rights reserved.
//

import UIKit

class FBBaseViewController: UIViewController {

    var navbar: UIView = {
        let screenWidth = UIScreen.main.bounds.width
        return UIView(frame: CGRect(x: 0, y: 0, width: screenWidth, height: 64))
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(navbar)
    }

}
