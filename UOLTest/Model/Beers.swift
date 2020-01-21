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
    let name, tagline, firstBrewed, welcomeDescription: String
    let imageURL: String
    let abv: Double
    let ibu: Double?
    let targetFg: Int
    let targetOg: Double
    let ebc: Int?
    let srm, ph: Double?
    let attenuationLevel: Double
    
    init(){
        id = 0
        name = ""
        tagline = ""
        firstBrewed = ""
        welcomeDescription = ""
        imageURL = ""
        abv = 0
        ibu = 0
        targetFg = 0
        targetOg = 0
        ebc = 0
        srm = 0
        ph = 0
        attenuationLevel = 0
    }
    
    init(id: Int, name: String, tagline: String, firstBrewed: String, welcomeDescription: String, imageURL: String, abv: Double, ibu: Double?, targetFg: Int, targetOg: Double, ebc: Int?, srm: Double?, ph: Double?, attenuationLevel: Double) {
        self.id = id
        self.name = name
        self.tagline = tagline
        self.firstBrewed = firstBrewed
        self.welcomeDescription = welcomeDescription
        self.imageURL = imageURL
        self.abv = abv
        self.ibu = ibu
        self.targetFg = targetFg
        self.targetOg = targetOg
        self.ebc = ebc
        self.srm = srm
        self.ph = ph
        self.attenuationLevel = attenuationLevel
    }
}
