//
//  Cell.swift
//  playmusic
//
//  Created by Quân on 10/5/19.
//  Copyright © 2019 QuanNguyen. All rights reserved.
//

import UIKit

class Cell: UITableViewCell {

    @IBOutlet weak var lblTenBai: UILabel!
    @IBOutlet weak var lblTenCaSi: UILabel!
    @IBOutlet weak var imgHinh: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func bindData(casi : casi) {
        //hinh
        do {
            let url: URL = URL(string: casi.hinh)!
            let data: Data = try Data(contentsOf: url)
            imgHinh.image = UIImage(data: data)
            //imgHinh.contentMode = .scaleAspectFit
            lblTenBai.text = casi.tenBai
            lblTenCaSi.text = casi.tenCaSi
            
            
        } catch  {
            
        }
    }
}
