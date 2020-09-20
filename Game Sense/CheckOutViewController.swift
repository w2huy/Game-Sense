//
//  CheckOutViewController.swift
//  Game Sense
//
//  Created by Baraa Hegazy on 9/19/20.
//  Copyright © 2020 wi2. All rights reserved.
//

import UIKit

class CheckOutViewController: UIViewController {

    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var placeOrderButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var similarImage1: UIImageView!
    @IBOutlet weak var similarImage2: UIImageView!
    @IBOutlet weak var similarImage3: UIImageView!
    
    var temp = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        tempLabel.text = temp
        placeOrderButton.layer.cornerRadius = 25.0
        imageView.layer.cornerRadius = 15.0
        similarImage1.layer.cornerRadius = 15
        similarImage2.layer.cornerRadius = 15
        similarImage3.layer.cornerRadius = 15
        switch temp {
        case VideoGameData().spiderman["ml_title"] as! String:
            tempLabel.text = VideoGameData().spiderman["title"] as? String
            companyLabel.text = VideoGameData().spiderman["company"] as? String
            let url = URL(string: VideoGameData().spiderman["image"] as! String)!
            imageView.af.setImage(withURL: url)
            let recList = VideoGameData().amongUs["recommendations"] as! [String]?
            let url1 = URL(string: recList![0] as String)
            let url2 = URL(string: recList![1] as String)
            let url3 = URL(string: recList![2] as String)
            similarImage1.af.setImage(withURL: url1!)
            similarImage2.af.setImage(withURL: url2!)
            similarImage3.af.setImage(withURL: url3!)
        case VideoGameData().mario["ml_title"] as! String:
            tempLabel.text = VideoGameData().mario["title"] as? String
            companyLabel.text = VideoGameData().mario["company"] as? String
            let url = URL(string: VideoGameData().mario["image"] as! String)!
            imageView.af.setImage(withURL: url)
            let recList = VideoGameData().amongUs["recommendations"] as! [String]?
            let url1 = URL(string: recList![0] as String)
            let url2 = URL(string: recList![1] as String)
            let url3 = URL(string: recList![2] as String)
            similarImage1.af.setImage(withURL: url1!)
            similarImage2.af.setImage(withURL: url2!)
            similarImage3.af.setImage(withURL: url3!)
        case VideoGameData().amongUs["ml_title"] as! String:
            tempLabel.text = VideoGameData().amongUs["title"] as? String
            companyLabel.text = VideoGameData().amongUs["company"] as? String
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
