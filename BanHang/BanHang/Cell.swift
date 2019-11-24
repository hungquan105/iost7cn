//
//  cell.swift
//  BanHang
//
//  Created by Quân on 10/6/19.
//  Copyright © 2019 QuanNguyen. All rights reserved.
//

import UIKit

class Cell: UITableViewCell {

    @IBOutlet weak var imge: UIImageView!
    @IBOutlet weak var lb1: UILabel!
    @IBOutlet weak var lb2: UILabel!
    @IBOutlet weak var lb3: UILabel!
    @IBOutlet weak var soluong: UILabel!
    @IBOutlet weak var bt1: UIButton!
    @IBOutlet weak var bt2: UIButton!
    
    // closure
    var didChangeQuantity:((_ index : Int, _ soluong : Int)->Void)! = nil
    var index:Int?
    var sl:Int!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    @IBAction func btnTru(_ sender: Any) {
        sl = Int(self.soluong.text!)! - 1
        self.soluong.text = String(sl)
        if self.didChangeQuantity != nil {
            self.didChangeQuantity!(self.index!, sl)
        }
    }
    
    @IBAction func btnCong(_ sender: Any) {
        sl = Int(self.soluong.text!)! + 1
        self.soluong.text = String(sl)
        if self.didChangeQuantity != nil {
            self.didChangeQuantity!(self.index!, sl)
        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func bindData(sp : sanpham) {
        imge.image = sp.anhsanpham
        lb1.text = sp.tensanpham
        lb2.text = sp.motasanpham
        lb3.text = String(sp.dongia)
        soluong.text = String(sp.soluong)
        
    }

}
