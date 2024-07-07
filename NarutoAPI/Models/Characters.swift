//
//  Characters.swift
//  NarutoAPI
//
//  Created by David Kochkin on 07.07.2024.
//

import UIKit

struct Characters: Codable {
    var id: Int
    var name: String
    var image: [String]
    var debut: Debut
    var jutsu: [String]
    var uniqueTraits: [String]
    
    struct Debut: Codable {
        var manga: String?
        var anime: String?
        var novel: String?
        var movie: String?
        var game: String?
        var ova: String?
        var appearsIn: String
    }
}
