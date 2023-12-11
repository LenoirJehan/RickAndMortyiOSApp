//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Jehan lenoir on 08/12/2023.
//

import Foundation


/// Object wrap represnets a single Api call
final class RMRequest {
    // Base URL
    // EndPoint
    // Path component
    // Query Parameters
    
    
    ///Api Constants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    
    ///Desired endpoint
    private let endpoint : RMEndpoint
    
    /// Path component for APi if any
    private let pathComponents : Set<String>
    
    /// Query arguments for API, in any
    private let queryParameters: [URLQueryItem]
    
    /// Constructed Url for the api request in string format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
       
            
            if !pathComponents.isEmpty {
                pathComponents.forEach({
                    string += "/\($0)"
                })
            }
        
        
        
            if !queryParameters.isEmpty{
                string += "?"
                let argumentString = queryParameters.compactMap({
                    guard let value = $0.value else { return nil}
                    return "\($0.name)=\(value)"
                }).joined(separator: "&")
                string += argumentString
            }
       
        return string
    }
    
    /// Computed and constructed Api url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    
    /// Desired http request
    public let httpMethod = "GET"
    
    //MARK: - Public
    
    
    /// Construct request
    /// - Parameters:
    ///   - endpoint: target endpoint
    ///   - pathComponents: collection of path component
    ///   - queryParameters: collection of query parameters
    public init(
        endpoint: RMEndpoint,
        pathComponents: Set<String> = [],
        queryParameters: [URLQueryItem] = []
    ){
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}
