//
//  CustomCell2.swift
//  CustomCellTableView
//
//  Created by Thiện Tùng on 12/31/19.
//  Copyright © 2019 tung. All rights reserved.
//

import UIKit

class CustomCell2: UITableViewCell {
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.systemPink
        
        return view
    }()


    override func awakeFromNib() {
        //Khi co giao dien
        super.awakeFromNib()
        // Initialization code
        
        
    }
        
    override func setSelected(_ selected: Bool, animated: Bool) {
        //Khi code chay khong co giao dien
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        self.addSubview(containerView)
        setupLayout()
    }
    
    func setupLayout(){
        containerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 4).isActive = true
        containerView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 4).isActive = true
        containerView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -4).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -4).isActive = true
    }
}
