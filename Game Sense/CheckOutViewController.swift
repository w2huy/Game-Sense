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
    @IBOutlet weak var templabal: UILabel!
    @IBOutlet weak var placeOrderButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    var temp = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        templabal.text = temp
        placeOrderButton.layer.cornerRadius = 25.0
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
