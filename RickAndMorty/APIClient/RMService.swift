//
//  RMService.swift
//  RickAndMorty
//
//  Created by Jehan lenoir on 08/12/2023.
//

import Foundation



/// Primary APi services ojbect to het rick and morty Data

final class RMService {
    
    /// Shared singleton instance
    static let shared = RMService()
    
    
    /// Privatized constructor
    private init() {}
    
    
    
    /// Send Rick and Morty API call
    /// - Parameters:
    ///   - request: request instance
    ///   - completion: CallBack with Data or error 
    public func execute(_ request: RMRequest, completion: @escaping () -> Void){
        
    }
}
