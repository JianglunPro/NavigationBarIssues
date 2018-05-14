//
//  BHFirstViewController.swift
//  NavigationBarIssues
//
//  Created by 姜伦 on 2018/5/14.
//  Copyright © 2018年 JianglunPro. All rights reserved.
//

import UIKit

class BHFirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func backToMenu(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }

}
