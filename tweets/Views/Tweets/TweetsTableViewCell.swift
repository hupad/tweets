//
//  TweetsTableViewCell.swift
//  tweets
//
//  Created by Harish Upadhyayula on 1/28/16.
//  Copyright © 2016 Harish Upadhyayula. All rights reserved.
//

import UIKit

class TweetsTableViewCell: UITableViewCell {

    @IBOutlet weak var userNameLbl: UILabel!
    
    @IBOutlet weak var tweetLbl: UILabel!
    
    @IBOutlet weak var profileImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
