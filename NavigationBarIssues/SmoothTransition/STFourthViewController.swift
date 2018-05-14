//
//  STFourthViewController.swift
//  NavigationBarIssues
//
//  Created by 姜伦 on 2018/5/14.
//  Copyright © 2018年 JianglunPro. All rights reserved.
//

import UIKit

class STFourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        transitionCoordinator?.animate(alongsideTransition: { (context) in
            self.navigationController?.navigationBar.alpha = 1
            self.navigationController?.navigationBar.barTintColor = UIColor.Social.linkedIn
        }, completion: nil)
    }


}
