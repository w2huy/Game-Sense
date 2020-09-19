//
//  GameDetailsViewController.swift
//  Game Sense
//
//  Created by Baraa Hegazy on 9/19/20.
//  Copyright © 2020 wi2. All rights reserved.
//

import UIKit

class GameDetailsViewController: UIViewController {

    var temp = ""
    @IBOutlet weak var tempLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        tempLabel.text = temp
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
