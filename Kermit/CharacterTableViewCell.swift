//
//  CharacterTableViewCell.swift
//  Kermit
//
//  Created by 임건우 on 2018. 7. 20..
//  Copyright © 2018년 lims. All rights reserved.
//

import UIKit

protocol CharacterCellDelegate:class{
    
}

class CharacterTableViewCell: UITableViewCell {

    weak var delegate: CharacterCellDelegate?
    
    @IBOutlet weak var CharacterImage: UIImageView!
    @IBOutlet weak var CharacterName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
