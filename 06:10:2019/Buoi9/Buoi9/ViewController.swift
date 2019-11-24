//
//  ViewController.swift
//  Buoi9
//
//  Created by Quân on 10/5/19.
//  Copyright © 2019 QuanNguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var arr:[Category] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        arr = [
            Category(name: "Smart Phone", products: [
                Product(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmUci2M-yAN5GiXYRTmLgBZgIpOBm-RrQtIGWkLQltgn6iRogm", name: "Apple iPhone 11 Pro Max", price: 1099),
                Product(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnOYjIBZNoKfldrGLpEGnVl0AoJPLIrTBfTzvgNbjYz-G3dJV0", name: "Samsung S10", price: 799)
            ]),
            Category(name: "Laptop", products: [
                Product(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4AUMB5ohWcGH2p4DLXXWPiQ2Pk8tQgiqhJLZZ64LZcbTLxKV2", name: "Dell Vostro", price: 999),
                Product(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9bhxCItxRwYZy5uzaUkyXipX2ljkrIcqrLohozEVMnv4XLWmG", name: "Apple Macbook", price: 2999),
                Product(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSz5VQZKPFxDlhXG2Njbi7su4HTmX9zA0ufGkhIRvjV-4llBUN3", name: "Asus Rog", price: 599)
            ]),
            Category(name: "Camera", products: [
                Product(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf69KsVclshTDD5JwoRIKkSf3IaS59cNJUOnKfCYbJCFSMcM1F-A", name: "Sony alpha", price: 999),
                Product(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcyFY66voWpe96uiT8N32Tse69SChvZVdI_2sMudc20YY5FV3o", name: "Canon 700D", price: 899),
            ])
        ]
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arr[section].name
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr[section].products.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
            cell.textLabel?.text = arr[indexPath.section].products[indexPath.row].name
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
            cell.textLabel?.text = arr[indexPath.section].products[indexPath.row].name
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let delete = UITableViewRowAction(style: .normal, title: "DELETE") { (UITableViewRowAction, IndexPath) in
            print("DELETE")
        }
        delete.backgroundColor = .red
        return [delete]
    }
}
