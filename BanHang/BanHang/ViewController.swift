//
//  ViewController.swift
//  BanHang
//
//  Created by Quân on 10/6/19.
//  Copyright © 2019 QuanNguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mytable: UITableView!
    var arr:[sanpham] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        arr = [
            sanpham(anhsanpham: #imageLiteral(resourceName: "1"),
                    tensanpham: "Milo",
                    motasanpham: "Sua Milo",
                    dongia:8000 ,
                    soluong:1
            ),
            sanpham(anhsanpham: #imageLiteral(resourceName: "2"),
                    tensanpham: "milo",
                    motasanpham: "Sua Milo",
                    dongia:8000 ,
                    soluong:1
            ),
            sanpham(anhsanpham: #imageLiteral(resourceName: "1"),
                    tensanpham: "Milo",
                    motasanpham: "Sua Milo",
                    dongia:8000 ,
                    soluong:1
            ),
            sanpham(anhsanpham: #imageLiteral(resourceName: "1"),
                    tensanpham: "Milo",
                    motasanpham: "Sua Milo",
                    dongia:8000 ,
                    soluong:1
            ),
            sanpham(anhsanpham: #imageLiteral(resourceName: "1"),
                    tensanpham: "Milo",
                    motasanpham: "Sua Milo",
                    dongia:8000 ,
                    soluong:1
            ),
            sanpham(anhsanpham: #imageLiteral(resourceName: "2"),
                    tensanpham: "Milo",
                    motasanpham: "Sua Milo",
                    dongia:8000 ,
                    soluong:1
            ),
            sanpham(anhsanpham: #imageLiteral(resourceName: "1"),
                    tensanpham: "Milo",
                    motasanpham: "Sua Milo",
                    dongia:8000 ,
                    soluong:1
            ),
            sanpham(anhsanpham: #imageLiteral(resourceName: "1"),
                    tensanpham: "Milo",
                    motasanpham: "Sua Milo",
                    dongia:8000 ,
                    soluong:1
            )
        ]
        
    }
    


}
extension ViewController:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! Cell
//        cell.bt1.tag = indexPath.row
//        cell.bt2.tag = indexPath.row
        
//        cell.bt1.addTarget(self, action: #selector(tang), for: UIControl.Event.touchUpInside)
//        cell.bt2.addTarget(self, action: #selector(giam), for: .touchUpInside)
        
        cell.index = indexPath.row
        
        // gan hanh dong
        cell.didChangeQuantity = { (index, soluong) in
            self.arr[index].soluong = soluong
            self.mytable.reloadData()
        }
        
        cell.bindData(sp: arr[indexPath.row])
        
        return cell
    }
    
//    @objc func tang(sender: UIButton) {
//        self.arr[sender.tag].soluong += 1
//        self.mytable.reloadData()
//    }
//    
//    @objc func giam(sender: UIButton) {
//        self.arr[sender.tag].soluong -= 1
//        self.mytable.reloadData()
//    }
}

