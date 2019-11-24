//
//  ViewController.swift
//  client
//
//  Created by Quân on 11/17/19.
//  Copyright © 2019 QuanNguyen. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    let Controller = HelperViewController()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
//        login(url: "http://localhost:3001/login")
        
//        Helper.RequestWith(url: "http://localhost:3001/test", method: .get, params: nil, encoding: JSONEncoding.default, header: nil, objectType: Response.self)
        
//        AlaLogin()
        let params = [
            "username":"teonguyen123"
        ] as [String:Any]
        
//        Helper.RequestWith(url: "http://localhost:3001/readuser", method: .post, params: params, encoding: JSONEncoding.default, header: nil, objectType: Response.self)

        Alamofire.request("http://localhost:3001/readuser",
                          method: .post,
                          parameters: params,
                          encoding: JSONEncoding.default,
                          headers: nil).responseJSON(queue: .main,
                                                     options: .allowFragments)
                          { (response) in
                            switch response.result {
                            case .success:
                                print("JSON")
                                guard let json = response.data as? Data else {
                                    
                                }
                                do {
                                    let json = try JSONDecoder.init().decode(Response.self, from: response.data!)
                                    print(json.message)
                                }catch let err {
                                    print(err.localizedDescription)
                                }
                            case .failure(let error):
                                print(error.localizedDescription)
                            }
        }
    }
    
    func AlamoLogin(){
        Alamofire.request("http://", method: <#T##HTTPMethod#>, parameters: <#T##Parameters?#>, encoding: <#T##ParameterEncoding#>, headers: <#T##HTTPHeaders?#>)
    }
    
}

struct Response: Codable {
    var result: Bool
    var message: String
}


