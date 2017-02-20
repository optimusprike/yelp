//
//  BusinessCell.swift
//  Yelp
//
//  Created by Prakash Pudhucode on 2/19/17.
//  Copyright © 2017 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var logoView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var ratingView: UIImageView!
    
    @IBOutlet weak var addressLabel: UILabel!
    
    
    @IBOutlet weak var reviewCountLabel: UILabel!
    
    @IBOutlet weak var distanceLabel: UILabel!
    
    
    @IBOutlet weak var categoriesLabel: UILabel!
    
    var business: Business!{
        didSet{
            nameLabel.text = business.name
            logoView.setImageWith(business.imageURL!)
            categoriesLabel.text = business.categories
            addressLabel.text = business.address
            reviewCountLabel.text = "\(business.reviewCount) Reviews"
            distanceLabel.text = business.distance
            ratingView.setImageWith(business.ratingImageURL!)
            
        }
    }

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
