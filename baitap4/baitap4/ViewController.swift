//
//  ViewController.swift
//  baitap4
//
//  Created by Quân on 9/15/19.
//  Copyright © 2019 QuanNguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let image: UIImageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnClick(_ sender: Any) {
        UIView.animate(withDuration: 3) {
            self.image.frame.size = CGSize(width: 100, height: 100)
            let screenSize: CGRect = UIScreen.main.bounds
            let screenWidth = screenSize.width
            let screenHeight = screenSize.height
            let randomX = Int.random(in: 0...(Int(screenWidth) - Int(self.image.frame.size.width)))
            let randomY = Int.random(in: 0...(Int(screenHeight) - Int(self.image.frame.size.height)))
            self.image.frame.origin = CGPoint(x: randomX, y: randomY)
            self.image.image = #imageLiteral(resourceName: "2")
            self.image.transform = CGAffineTransform(scaleX: 2, y: 2)
            self.view.addSubview(self.image)
        }
    }
    
}

