//
//  Villages.swift
//  NarutoAPI
//
//  Created by David Kochkin on 07.07.2024.
//

import Foundation


struct Villages: Codable {
    let id: Int
    var name: String
    var characters: [Characters]
}
