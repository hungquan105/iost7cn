//
//  RequestService.swift
//  client
//
//  Created by Quân on 11/22/19.
//  Copyright © 2019 QuanNguyen. All rights reserved.
//

import Foundation
import Alamofire

typealias CompleteHandleJSON = (_ isSuccess: Bool, _ json: Any?, _ error: Error?)->Void

struct RequestService {
    
    static let shared = RequestService()
    
    fileprivate init (){}
    
    
}
