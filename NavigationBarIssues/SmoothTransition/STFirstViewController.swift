//
//  STFirstViewController.swift
//  NavigationBarIssues
//
//  Created by 姜伦 on 2018/5/14.
//  Copyright © 2018年 JianglunPro. All rights reserved.
//

import UIKit

class STFirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.barTintColor = UIColor.Social.facebook
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        transitionCoordinator?.animate(alongsideTransition: { (context) in
            self.navigationController?.navigationBar.barTintColor = UIColor.Social.facebook
        }, completion: nil)
    }
    
    @IBAction func backToMenu(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }

}
