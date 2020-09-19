//
//  GameDetailsViewController.swift
//  Game Sense
//
//  Created by Baraa Hegazy on 9/19/20.
//  Copyright © 2020 wi2. All rights reserved.
//

import UIKit
import AlamofireImage

class GameDetailsViewController: UIViewController {

    var temp = ""
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        switch temp {
        case VideoGameData().spiderman["ml_title"] as! String:
            tempLabel.text = VideoGameData().spiderman["title"] as? String
            let url = URL(string: VideoGameData().spiderman["image"] as! String)!
            imageView.af.setImage(withURL: url)
        case VideoGameData().mario["ml_title"] as! String:
            tempLabel.text = VideoGameData().mario["title"] as? String
            let url = URL(string: VideoGameData().mario["image"] as! String)!
            imageView.af.setImage(withURL: url)
        case VideoGameData().amongUs["ml_title"] as! String:
            tempLabel.text = VideoGameData().amongUs["title"] as? String
            let url = URL(string: VideoGameData().amongUs["image"] as! String)!
            imageView.af.setImage(withURL: url)
        default:
            tempLabel.text = "Video Game"
        }
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
