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
        nextBtn.backgroundColor = UIColor.gray
    }
    
    @IBAction func categortPressed(_ sender: UIButton)
    {
        selectLeague(leagueType: sender.currentTitle!.lowercased(), sendingBtn: sender)
    }
    
    @IBAction func onNextTapped(_ sender: UIButton)
    {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    func selectLeague(leagueType: String, sendingBtn: UIButton)
    {
        let updatedLeagueType = leagueType.replacingOccurrences(of: "-", with: "")
        player.desiredLeague = updatedLeagueType
        sendingBtn.backgroundColor = UIColor.gray
        nextBtn.isEnabled = true
        nextBtn.backgroundColor = UIColor.init(red: 49/255, green: 49/255, blue: 49/255, alpha: 1)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC
        {
            skillVC.player = player
        }
    }
}

