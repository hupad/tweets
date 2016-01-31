//
//  TweetsViewController.swift
//  tweets
//
//  Created by Harish Upadhyayula on 1/28/16.
//  Copyright © 2016 Harish Upadhyayula. All rights reserved.
//

import UIKit

class TweetsViewController: UITableViewController {
    
    override func viewDidLoad() {
        
        loadTweetsForLoggedInUser()

        self.title = "Tweets"
        self.navigationItem.hidesBackButton = true
        
        self.navigationItem.rightBarButtonItem = composeTweetButton()
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCellWithIdentifier("tweetCell", forIndexPath: indexPath)
        
        // Configure cell here
        
        return cell
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Actually it should be length of the array
        return 1
    }
    
    
    // Helper Methods
    
    func loadTweetsForLoggedInUser() -> () {
        
    }
    
    func composeTweetButton() -> (UIBarButtonItem) {
        let composeTweet = UIBarButtonItem.init(barButtonSystemItem: UIBarButtonSystemItem.Add, target: self, action: "composeTweet")
        
        return composeTweet
    }
    
    func composeTweet() -> (){
        
        let composeTweet = self.storyboard?.instantiateViewControllerWithIdentifier("composeTweetVC") as! ComposeTweetViewController
        self.navigationController?.presentViewController(composeTweet, animated: true, completion: nil)
    }
}
