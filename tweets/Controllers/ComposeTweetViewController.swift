//
//  ComposeTweetViewController.swift
//  tweets
//
//  Created by Harish Upadhyayula on 1/29/16.
//  Copyright © 2016 Harish Upadhyayula. All rights reserved.
//

import UIKit

class ComposeTweetViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var tweetMessage: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setDefaultComposeText()
        
        let navbar = UINavigationBar.init(frame: CGRect.init(x: 0, y: 0, width: self.view.frame.width, height: 44))
        
        let navItem = UINavigationItem.init(title: "Tweet")
        navItem.leftBarButtonItem = setCancelButton()
        
        navbar.items = [navItem]
        
        self.view.addSubview(navbar)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textViewDidBeginEditing(textView: UITextView) {
        self.tweetMessage.text = ""
    }
    
    func setDefaultComposeText() -> (){
        
        self.tweetMessage.text = "Write Something"
        self.tweetMessage.delegate = self
        self.tweetMessage.font = UIFont.init(name: "Helvetica Neue", size: 14)
    }
    
    func setCancelButton() -> (UIBarButtonItem){
        let cancelButton = UIBarButtonItem.init(barButtonSystemItem: UIBarButtonSystemItem.Cancel, target: self, action: "closeView")
        
        return cancelButton
    }
    
    func closeView() -> (){
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func tweet(sender: AnyObject) {
        
        
    }
    
    
}
