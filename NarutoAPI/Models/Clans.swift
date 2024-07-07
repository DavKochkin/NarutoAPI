//
//  Clans.swift
//  NarutoAPI
//
//  Created by David Kochkin on 07.07.2024.
//

import Foundation

struct Clans: Codable {
    let id: Int
    var name: String
    var images: [String]?
    var characters: [Characters]
}
