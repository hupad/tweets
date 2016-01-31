//
//  LaunchViewController.swift
//  tweets
//
//  Created by Harish Upadhyayula on 1/25/16.
//  Copyright © 2016 Harish Upadhyayula. All rights reserved.
//

import UIKit

class LaunchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func signUp(sender: AnyObject) {
        print("Launch Sign up screen")
    }
    
    @IBAction func logIn(sender: AnyObject) {
        print("Launch Log In Screen")
    }
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBarHidden = true
    }
    
    override func viewWillDisappear(animated: Bool) {
        self.navigationController?.navigationBarHidden = false
    }

}
