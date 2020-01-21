//
//  Beersclient.swift
//  UOLTest
//
//  Created by Liellison Menezes on 21/01/20.
//  Copyright © 2020 Liellison Menezes. All rights reserved.
//

import Alamofire

class Beersclient {
    @discardableResult
    private static func performRequest(route: Beersendpoints, completion: @escaping (DataResponse<Any>?) -> Void) -> DataRequest {
        return Alamofire.request(route).validate().responseJSON { (response: DataResponse<Any>?) in completion(response) }
    }
    
    static func getGenre(completion: @escaping ([Beers]?, Error?) -> Void) {
        performRequest(route: .allBeers) { response in
            if response?.error == nil {
                if let data = response!.data, let utf8Text = String(data: data, encoding: .utf8) {
                    let json = utf8Text.data(using: .utf8)
                    
                    do {
                        let decoder = JSONDecoder()
                        let decodedJson = try decoder.decode([Beers].self, from: json!)
                        completion(decodedJson, nil)
                    } catch {
                        completion(nil, error)
                    }
                }
            } else {
            }
        }
    }
}
