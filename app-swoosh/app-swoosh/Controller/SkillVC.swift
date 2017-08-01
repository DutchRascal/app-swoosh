//
//  SkillVC.swift
//  app-swoosh
//
//  Created by Andre Boevink on 01/08/2017.
//  Copyright © 2017 Andre Boevink. All rights reserved.
//

import UIKit

class SkillVC: UIViewController
{

    var player: Player!
    {
        didSet
        {
            print(player.desiredLeague)
        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
}
