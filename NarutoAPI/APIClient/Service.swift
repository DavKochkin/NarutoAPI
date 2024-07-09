//
//  Service.swift
//  NarutoAPI
//
//  Created by David Kochkin on 07.07.2024.
//

import Foundation


/// Primary API Service object to get Naruto data
final class Service {
    
    /// share singleton instance
    static let shared = Service()
    
    /// Privatized constructor
    private init() {}
    
    
    
    /// Send Naruto API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - completion: Callback with data or error 
    public func execute(_ request: Request,
                        completion: @escaping (Result<String, Error>) -> Void) {
        
    }
}
