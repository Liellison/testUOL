//
//  Constants.swift
//  UOLTest
//
//  Created by Liellison Menezes on 21/01/20.
//  Copyright © 2020 Liellison Menezes. All rights reserved.
//

import Foundation

struct Constants{
    struct ProductionServer {
        static let baseURL = "https://api.punkapi.com/v2/"
    }
    
    struct APIParameterkey {
        static let apiKey = ""
    }
}
enum HTTPHeaderField: String{
    case authentication = "Authorization"
    case contentType = "Content-Type"
    case acceptType = "Accept"
    case acceptEncoding = "Accept-Encoding"
}

enum ContentType: String {
    case json = "application/json"
}
