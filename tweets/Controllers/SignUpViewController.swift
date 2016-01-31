//
//  SignUpViewController.swift
//  tweets
//
//  Created by Harish Upadhyayula on 1/25/16.
//  Copyright © 2016 Harish Upadhyayula. All rights reserved.
//

import UIKit
import Parse
import Bolts

class SignUpViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }    

    @IBAction func signUp(sender: AnyObject) {
        
        let user = PFUser()
        user.username = self.userName.text
        user.password = self.password.text
        user.email = self.email.text
        
        user.signUpInBackgroundWithBlock { (isSuccessFull, error) -> Void in
            if(isSuccessFull){
                let tweetsVC = self.storyboard?.instantiateViewControllerWithIdentifier("tweetsViewController") as! TweetsViewController
                self.navigationController?.pushViewController(tweetsVC, animated: true)
            }else{
                let alert = UIAlertController.init(title: "Error", message: "Error signing up. Try later.", preferredStyle: UIAlertControllerStyle.Alert)
                let action = UIAlertAction.init(title: "Ok", style: UIAlertActionStyle.Default, handler: nil)
                alert.addAction(action)
                self.presentViewController(alert, animated: true, completion: nil)
            }
            
        }
    }
}
