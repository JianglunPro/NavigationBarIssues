//
//  FBThirdViewController.swift
//  NavigationBarIssues
//
//  Created by 姜伦 on 2018/5/14.
//  Copyright © 2018年 JianglunPro. All rights reserved.
//

import UIKit

class FBThirdViewController: FBBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navbar.backgroundColor = UIColor.CSS.skyBlue
    }
    
    @IBAction func backToMenu(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }

}
