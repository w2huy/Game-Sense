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
    @IBOutlet weak var buyButton: UIButton!
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var similarImage1: UIImageView!
    @IBOutlet weak var similarImage2: UIImageView!
    @IBOutlet weak var similarImage3: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.layer.cornerRadius = 15.0
        buyButton.layer.cornerRadius = 25.0
        similarImage1.layer.cornerRadius = 15
        similarImage2.layer.cornerRadius = 15
        similarImage3.layer.cornerRadius = 15
        
        switch temp {
        case VideoGameData().spiderman["ml_title"] as! String:
            tempLabel.text = VideoGameData().spiderman["title"] as? String
            companyLabel.text = VideoGameData().spiderman["company"] as? String
            descriptionLabel.text = VideoGameData().spiderman["description"] as? String
            let url = URL(string: VideoGameData().spiderman["image"] as! String)!
            imageView.af.setImage(withURL: url)
            let recList = VideoGameData().spiderman["recommendations"] as! [String]?
            let url1 = URL(string: recList![0] as String)
            let url2 = URL(string: recList![1] as String)
            let url3 = URL(string: recList![2] as String)
            similarImage1.af.setImage(withURL: url1!)
            similarImage2.af.setImage(withURL: url2!)
            similarImage3.af.setImage(withURL: url3!)
        case VideoGameData().mario["ml_title"] as! String:
            tempLabel.text = VideoGameData().mario["title"] as? String
            companyLabel.text = VideoGameData().mario["company"] as? String
            descriptionLabel.text = VideoGameData().mario["description"] as? String
            let url = URL(string: VideoGameData().mario["image"] as! String)!
            imageView.af.setImage(withURL: url)
            let recList = VideoGameData().mario["recommendations"] as! [String]?
            let url1 = URL(string: recList![0] as String)
            let url2 = URL(string: recList![1] as String)
            let url3 = URL(string: recList![2] as String)
            similarImage1.af.setImage(withURL: url1!)
            similarImage2.af.setImage(withURL: url2!)
            similarImage3.af.setImage(withURL: url3!)
        case VideoGameData().amongUs["ml_title"] as! String:
            tempLabel.text = VideoGameData().amongUs["title"] as? String
            companyLabel.text = VideoGameData().amongUs["company"] as? String
            descriptionLabel.text = VideoGameData().amongUs["description"] as? String
            let url = URL(string: VideoGameData().amongUs["image"] as! String)!
            imageView.af.setImage(withURL: url)
            let recList = VideoGameData().amongUs["recommendations"] as! [String]?
            let url1 = URL(string: recList![0] as String)
            let url2 = URL(string: recList![1] as String)
            let url3 = URL(string: recList![2] as String)
            similarImage1.af.setImage(withURL: url1!)
            similarImage2.af.setImage(withURL: url2!)
            similarImage3.af.setImage(withURL: url3!)
        default:
            tempLabel.text = "Video Game"
        }
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is CheckOutViewController
        {
            let vc = segue.destination as? CheckOutViewController
            vc?.temp = temp
        }
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
