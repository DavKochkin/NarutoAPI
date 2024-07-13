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
    
    enum ServiceError: Error {
        case failedToCreateRequest
        case failedToGetData
    }
    
    /// Send Naruto API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - type : The type of object we expect to get back 
    ///   - completion: Callback with data or error
    public func execute<T:Codable>(
        _ request: Request,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void) {
            
            guard let urlRequest = self.request(from: request) else {
                completion(.failure(ServiceError.failedToCreateRequest))
                return
            }
            
            let task = URLSession.shared.dataTask(with: urlRequest) { data, _, error in
                guard let data = data, error == nil else {
                    completion(.failure(error ?? ServiceError.failedToGetData))
                    return
                }
                
                // Decode response
                do {
                    
                }
                catch {
                    
                }
            }
        }
    
    
    //MARK: - Private
    
    private func request(from request: Request) -> URLRequest? {
        guard let url = request.url else {
            return nil
        }
        var request = URLRequest(url: url)
        request.httpMethod = request.httpMethod
        return request
    }
}
