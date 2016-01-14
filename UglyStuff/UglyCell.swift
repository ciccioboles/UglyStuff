//
//  UglyCell.swift
//  UglyStuff
//
//  Created by dev on 1/13/16.
//  Copyright © 2016 ciccio boles. All rights reserved.
//

import UIKit

class UglyCell: UITableViewCell {

    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var mainLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        mainImg.layer.cornerRadius = 5.0
        mainImg.clipsToBounds = true
    }

    func configureCell(image: UIImage, text: String) {
        mainImg.image = image
        mainLbl.text = text
        
        
    }
        
    
    
    
}
