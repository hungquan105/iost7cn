//
//  ViewController.swift
//  baitap2
//
//  Created by Quân on 9/14/19.
//  Copyright © 2019 QuanNguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgOff: UIImageView!
    @IBOutlet weak var swV: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func ONOFF(_ sender: UISwitch) {
//        if(swV.isOn) == true
//        {
//            imgOff.image = UIImage(named:"light on")
//        }
//        else
//        {
//            imgOff.image = UIImage(named:"light off")
//        }
        if sender.isOn {
            imgOff.image = #imageLiteral(resourceName: "light off")
        } else {
            imgOff.image = #imageLiteral(resourceName: "light on")
        }
    }
    
}

