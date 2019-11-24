//
//  ViewController.swift
//  client
//
//  Created by Quân on 11/24/19.
//  Copyright © 2019 QuanNguyen. All rights reserved.
//

import UIKit
import SocketIO

let manager = SocketManager(socketURL: URL(string: "http://10.0.0.107:3000")!, config: [.log(true), .compress])
let socket = manager.defaultSocket

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        socket.on("server-send") { (data, ack) in
            print(data[0] as? String ?? "")
        }
        socket.connect()
    }

    @IBAction func Send(_ sender: Any) {
        socket.emit("client-send", "Hello Wolrd!")
    }
    
}

