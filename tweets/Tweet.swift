//
//  Tweet.swift
//  tweets
//
//  Created by Harish Upadhyayula on 1/30/16.
//  Copyright © 2016 Harish Upadhyayula. All rights reserved.
//

import UIKit
import Parse

class Tweet : PFObject, PFSubclassing {
    
    @NSManaged var tweet: String
    @NSManaged var user: PFUser
    
    override class func initialize() {
        struct Static {
            static var onceToken : dispatch_once_t = 0;
        }
        dispatch_once(&Static.onceToken) {
            self.registerSubclass()
        }
    }
    
    static func parseClassName() -> String {
        return "Tweets"
    }
}
