//
//  Beersendpoint.swift
//  UOLTest
//
//  Created by Liellison Menezes on 21/01/20.
//  Copyright © 2020 Liellison Menezes. All rights reserved.
//

import Alamofire

enum Beersendpoints {
    case allBeers
    
    var method: HTTPMethod{
        switch self {
        case .allBeers:
            return .get
        }
    }
    
    var path: String{
        switch self {
        case .allBeers:
            return "/beers"
        }
    }
    
    var parameters: Parameters?{
        switch self {
        case .allBeers:
            return nil
        }
    }
    
    func asURLRequest() throws -> URLRequest {
        let url = try! "\(Constants.ProductionServer.baseURL)\(path)".asURL()
        var urlRequest = URLRequest(url: url)
        
        urlRequest.httpMethod = method.rawValue
        urlRequest.setValue(ContentType.json.rawValue, forHTTPHeaderField: HTTPHeaderField.acceptType.rawValue)
        
        if let parameters = parameters {
            do {
                urlRequest.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: [])
            } catch {}
        }
        return urlRequest
    }
    
}
