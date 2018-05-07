//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Cheryl See on 5/6/18.
//  Copyright © 2018 AnS. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    // Making this an implicitly unwrapped optional because we don't even want this code to run without a player
    var player: Player!
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    // Next is disabled by default until a button is pressed.
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    // For these buttons, the user makes a choice (which league)
    // and the next button becomes enabled
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
    }
}
