//
//  APIConfiguration.swift
//  UOLTest
//
//  Created by Liellison Menezes on 21/01/20.
//  Copyright © 2020 Liellison Menezes. All rights reserved.
//

import Alamofire

protocol APIConfiguration: URLRequestConvertible{
    var method: HTTPMethod {get}
    var path: String{get}
    var paramenters: Parameters? {get}
}
