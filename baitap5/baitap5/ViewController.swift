//
//  ViewController.swift
//  baitap5
//
//  Created by Quân on 9/15/19.
//  Copyright © 2019 QuanNguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgRotate: UIImageView!
    var X:CGFloat = 0
    var Y:CGFloat = 0
    var W:CGFloat = 100
    var H:CGFloat = 100
    var timer:Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Timer.scheduledTimer(timeInterval: 0.01,
                             target: self,
                             selector: #selector(rotatePicture),
                             userInfo: nil,
                             repeats: true)
        
        self.timerFire()
    }
    
    @objc func rotatePicture() {
        self.imgRotate.transform = self.imgRotate.transform.rotated(by: .pi/1800)
    }
    
    func timerFire() {
        self.timer = Timer.scheduledTimer(withTimeInterval: 0.2,
                             repeats: true) { (timer) in
                                self.createPic()
        }
    }

    func createPic(){
        if self.X < view.frame.width - self.W {
            if self.Y < view.frame.height - self.H {
                let img:UIImageView = UIImageView(frame: CGRect(x: X, y: Y, width: W, height: H))
                img.image = #imageLiteral(resourceName: "4")
                view.addSubview(img)
                self.Y += self.H
            } else {
                self.X += self.W
                self.Y = 0
            }
        } else {
            self.timer?.invalidate()
        }
    }
}

