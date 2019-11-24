//
//  HelperViewController.swift
//  client
//
//  Created by Quân on 11/17/19.
//  Copyright © 2019 QuanNguyen. All rights reserved.
//

import UIKit
import Alamofire

class HelperViewController: UIViewController {
    
    static var shared = HelperViewController()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func RequestWith<T: Codable>(url: String, method: HTTPMethod, params: [String:Any]?, encoding: ParameterEncoding, header: [String:String]?, objectType: T.Type){
        Alamofire.request(url, method: method, parameters: params, encoding: encoding, headers: header).responseJSON { (response) in
            switch response.result {
            case .success:
                do {
                    let json = try JSONDecoder.init().decode(objectType, from: response.data!)
                    print(json)
                }catch let err {
                    print(err.localizedDescription)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
}
