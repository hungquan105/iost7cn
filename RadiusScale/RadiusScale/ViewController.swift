//
//  ViewController.swift
//  RadiusScale
//
//  Created by Quân on 9/15/19.
//  Copyright © 2019 QuanNguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imgRotation: UIImageView!
    @IBOutlet weak var imgHinh: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgHinh.layer.borderColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        imgHinh.layer.borderWidth = 5
        
//        UIView.animate(withDuration: 3, animations: {
//            self.imgHinh.layer.cornerRadius = (self.imgHinh.bounds.width / 2)
//
//        }) { (finish) in
//            UIView.animate(withDuration: 1, delay: 0, options: [.repeat], animations: {
//                self.imgHinh.transform = CGAffineTransform(scaleX: 2, y: 2)
//            }, completion: nil)
//        }
        
        UIView.animate(withDuration: 3, animations: {
            self.imgHinh.transform = CGAffineTransform(scaleX: -1, y: -1)
        }) { (_) in
            UIView.animate(withDuration: 3) {
                self.imgHinh.transform = self.imgHinh.transform.scaledBy(x: -1, y: -1)
            }

        }
        
//         Xoay
//        let rotate = CABasicAnimation(keyPath: "transform.rotation.z")
//        rotate.fromValue = 0
//        rotate.toValue = CGFloat.pi*2
//        rotate.duration = 3
//        rotate.repeatCount = 10
//        imgRotation.layer.add(rotate, forKey: nil)
        
    }
}

