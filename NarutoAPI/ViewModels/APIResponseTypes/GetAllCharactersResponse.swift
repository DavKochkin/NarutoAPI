//
//  GetAllCharactersResponse.swift
//  NarutoAPI
//
//  Created by David Kochkin on 20.07.2024.
//
import UIKit

struct GetAllCharactersResponse: Codable {
    let characters: [Characters]
        let currentPage: String
        let pageSize: String
        let totalCharacters: Int
}
