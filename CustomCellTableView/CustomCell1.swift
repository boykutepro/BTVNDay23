//
//  CustomCell1.swift
//  CustomCellTableView
//
//  Created by Thiện Tùng on 12/31/19.
//  Copyright © 2019 tung. All rights reserved.
//

import UIKit

class CustomCell1: UITableViewCell {

    @IBOutlet weak var containerView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        containerView.backgroundColor = UIColor.cyan
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
}
