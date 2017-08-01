//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Andre Boevink on 30/07/2017.
//  Copyright © 2017 Andre Boevink. All rights reserved.
//

import UIKit

class BorderButton: UIButton
{
    override func awakeFromNib() {
        super .awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }
}
