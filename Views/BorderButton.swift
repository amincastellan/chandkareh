//
//  BorderButton.swift
//  chandkareh
//
//  Created by ameen castellan on 11/28/18.
//  Copyright © 2018 ameen castellan. All rights reserved.
//

import UIKit

class BorderButton: UIButton {
    
    override func awakeFromNib() {
        super .awakeFromNib()
        layer.borderWidth = 4.0
        layer.borderColor = UIColor.red.cgColor
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
