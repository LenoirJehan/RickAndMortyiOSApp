//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Jehan lenoir on 08/12/2023.
//

import Foundation


/// Represent unique Api endpoint
@frozen enum RMEndpoint: String{
    /// Endpoint to get character info
    case character
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info
    case episode
}


