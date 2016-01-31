//
//  LogInViewController.swift
//  tweets
//
//  Created by Harish Upadhyayula on 1/25/16.
//  Copyright © 2016 Harish Upadhyayula. All rights reserved.
//

import UIKit
import Parse

class LogInViewController: UIViewController {
    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Log In"
    }
    
    @IBAction func logIn(sender: AnyObject) {
        PFUser.logInWithUsernameInBackground(self.username.text!, password: self.password.text!) { (user, error) -> Void in
            
            if(user != nil){
                let tweets = self.storyboard?.instantiateViewControllerWithIdentifier("tweetsViewController") as! TweetsViewController
                self.navigationController?.pushViewController(tweets, animated: true)
            }else{
                
            }
        }
    }
    
}
