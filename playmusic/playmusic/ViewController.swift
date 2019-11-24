//
//  ViewController.swift
//  playmusic
//
//  Created by Quân on 10/5/19.
//  Copyright © 2019 QuanNguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTable: UITableView!
    var arr:[casi] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arr = [
            casi(tenCaSi: "Chi Pu", hinh: "https://image-us.24h.com.vn/upload/2-2018/images/2018-06-19/1529415502-243-chi-pu-3-1529374501-width640height480.jpg", tenBai: "Anh Oi Anh O Lai", nhac: "https://data18.chiasenhac.com/downloads/2009/6/2008142-61698453/128/Anh%20Oi%20O%20Lai%20-%20Nguyen%20Tran%20Trung%20Quan.mp3"),
            casi(tenCaSi: "Lou Hoang", hinh: "https://vignette.wikia.nocookie.net/rapviet/images/6/65/Lou.jpg/revision/latest?cb=20180626082941&path-prefix=vi", tenBai: "Cam Giac Luc Ay Se Ra Sao", nhac: "https://data18.chiasenhac.com/downloads/2002/6/2001890-b5f766df/128/Cam%20Giac%20Luc%20Ay%20Se%20Ra%20Sao%20-%20Lou%20Hoang.mp3")
        ]
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "Cell") as! Cell
        cell.bindData(casi: arr[indexPath.row])
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let manHinh2 = storyboard.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        
//        manHinh2.hinhs = arr[indexPath.row].hinh
//        manHinh2.nhacs = arr[indexPath.row].nhac
        
        manHinh2.bindData(index: arr[indexPath.row])
        self.navigationController?.pushViewController(manHinh2, animated: true)
    }
    
}


