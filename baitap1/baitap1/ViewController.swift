//
//  ViewController.swift
//  baitap1
//
//  Created by Quân on 9/14/19.
//  Copyright © 2019 QuanNguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lbDosang: UILabel!
    @IBOutlet weak var lbBogoc: UILabel!
    @IBOutlet weak var imgHinh: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgHinh.layer.borderWidth = 1
        imgHinh.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        // animation
        UIView.animate(withDuration: 3) {
            self.imgHinh.frame.origin.y = 750
            self.imgHinh.frame.origin.x = 300
        }
        
//        UIView.animate(withDuration: 3,
//                       animations: {
//                        self.imgHinh.frame.origin.y = 750
//        }) { (finish) in
//            self.imgHinh.frame.origin.x = 300
//        }
        
//        UIView.animate(withDuration: 3,
//                       delay: 0,
//                       options: [.repeat,.autoreverse],
//                       animations: {
//                        self.imgHinh.frame.origin.y = 750
//        },
//                       completion: nil)
//    }

    }

    @IBAction func Chinhdosang(_ sender: UISlider) {
        lbDosang.text = String(sender.value)
//        UIScreen.main.brightness = CGFloat(sender.value)
        imgHinh.transform = CGAffineTransform(scaleX: CGFloat(sender.value), y: CGFloat(sender.value))
    }
    @IBAction func Chinhbogoc(_ sender: UISlider) {
        lbBogoc.text = String (sender.value)
        imgHinh.layer.cornerRadius = CGFloat(sender.value)
    }
}

