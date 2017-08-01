//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Andre Boevink on 01/08/2017.
//  Copyright © 2017 Andre Boevink. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController
{
    
    var player: Player!

    @IBOutlet weak var nextBtn: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        player = Player()
    }
    
    @IBAction func onNextTapped(_ sender: UIButton)
    {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: UIButton)
    {
        selectLeague(leagueType: "mens")
    }
    @IBAction func onWomensTapped(_ sender: UIButton)
    {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: UIButton)
    {
        selectLeague(leagueType: "coed")
    }
    
    func selectLeague(leagueType: String)
    {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC
        {
            skillVC.player = player
        }
    }
}

