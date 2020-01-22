//
//  Beers.swift
//  UOLTest
//
//  Created by Liellison Menezes on 21/01/20.
//  Copyright © 2020 Liellison Menezes. All rights reserved.
//

import Foundation

// MARK: - Element
class Beers: Codable {
    let id: Int
    let name, tagline, description: String
    let image_url: String
    let abv: Double
    let ibu: Double?
    let target_fg: Int
    let target_og: Double
    let ebc: Int?
    let srm, ph: Double?
    let attenuation_level: Double
    
    init(){
        id = 0
        name = ""
        tagline = ""
        description = ""
        image_url = ""
        abv = 0
        ibu = 0
        target_fg = 0
        target_og = 0
        ebc = 0
        srm = 0
        ph = 0
        attenuation_level = 0
    }
    
    init(id: Int, name: String, tagline: String, description: String, image_url: String, abv: Double, ibu: Double?, target_fg: Int, target_og: Double, ebc: Int?, srm: Double?, ph: Double?, attenuation_level: Double) {
        self.id = id
        self.name = name
        self.tagline = tagline
        self.description = description
        self.image_url = image_url
        self.abv = abv
        self.ibu = ibu
        self.target_fg = target_fg
        self.target_og = target_og
        self.ebc = ebc
        self.srm = srm
        self.ph = ph
        self.attenuation_level = attenuation_level
    }
}
