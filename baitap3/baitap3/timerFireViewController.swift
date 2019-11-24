//
//  timerFireViewController.swift
//  baitap3
//
//  Created by Quân on 9/14/19.
//  Copyright © 2019 QuanNguyen. All rights reserved.
//

import UIKit

class timerFireViewController: UIViewController {
    
    var X : CGFloat = 0
    var Y : CGFloat = 0
    var t:Timer?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.timerFire()
    }
    
    func timerFire(){
        self.t = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showPic), userInfo: nil, repeats: true)
    }
    
    @objc func showPic(){
        let imgName = UIImageView(frame: CGRect(x: X, y: Y, width: 100, height: 100))
        imgName.image = UIImage(named: String("2"))
        view.addSubview(imgName)
        Y += 100
        if Y > 700 {
            self.t?.invalidate()
            self.Y = 0
            self.X += 100
            self.timerFire()
            if self.X > 300 {
                self.t?.invalidate()
            }
        }
    }
}

