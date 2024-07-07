//
//  Endpoint.swift
//  NarutoAPI
//
//  Created by David Kochkin on 07.07.2024.
//

import Foundation


/// Represents unique API endpoint
@frozen enum Endpoint: String {
    /// Endpoint to get character info
    case character
    /// Endpoint to get clan info
    case clan
    /// Endpoint to get village  info 
    case village
}
