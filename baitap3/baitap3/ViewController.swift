//
//  ViewController.swift
//  baitap3
//
//  Created by Quân on 9/14/19.
//  Copyright © 2019 QuanNguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var X : CGFloat = 0
    var Y : CGFloat = 0
    var W : CGFloat = 0
    var H : CGFloat = 0
    var random  = Int.random(in: 1...3)
    var t:Timer?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //        imgName.frame = CGRect (x: CGFloat(random * 30), y: CGFloat(random * 30), width: view.frame.width * 0.5, height: view.frame.height * 0.5)
        //        imgName.contentMode = .scaleAspectFit
//        view.addSubview(imgName)
        
//        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (timer1) in
//
//            self.Y = 0
//            self.X += 100
//            if self.X > self.view.frame.width/100 {
//                timer1.invalidate()
//            }
//        }
//        for x in 0...Int(view.frame.width/100) {
        
//        }
        
        
        
        
//        t = Timer(timeInterval: 1, repeats: true) { (timer1) in
//            let imgName = UIImageView(frame: CGRect(x: self.X, y: self.Y, width: 100, height: 100))
//            imgName.image = UIImage(named: String("2"))
//            self.view.addSubview(imgName)
//            self.Y += 100
//            if self.Y > self.view.frame.height - imgName.frame.height {
//                timer1.invalidate()
//                self.X += 100
//                self.Y = 0
//                self.timerFire()
//            }
//        }
//        t?.fire()
//        self.timerFire()
        
//        for x in 0...Int(view.frame.width/100) {
//            for y in 0...Int(view.frame.height/100){
//                CreatePic(x: CGFloat(x*100), y: CGFloat(y*100))
//            }
//        }
        
        
//        while(X < (view.frame.width - 100)){
//            while (Y < (view.frame.height - 100)) {
//                let imgName = UIImageView(frame: CGRect(x: X, y: Y, width: 100, height: 100))
//                imgName.image = UIImage(named: String(random))
//                imgName.contentMode = .scaleAspectFit
//                view.addSubview(imgName)
//                Y += 100
//            }
//            Y = 0
//            X += 100
//        }
        self.setupPicture(x: 50, y: 50, width: 10, height: 10)
        self.timerFire()
        
    }
    
    func setupPicture(x:CGFloat, y:CGFloat, width:CGFloat, height:CGFloat){
        self.X = x
        self.Y = y
        self.W = width
        self.H = height
    }
    
    func timerFire(){
        self.t = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { (timer) in
            let imgName = UIImageView(frame: CGRect(x: self.X, y: self.Y, width: self.W, height: self.H))
            imgName.image = UIImage(named: String("2"))
            self.view.addSubview(imgName)
            self.Y += self.H
            if self.Y > self.view.frame.height - imgName.frame.height {
                timer.invalidate()
                self.X += self.W
                self.Y = 0
                self.timerFire()
            }
        }
    }
}

