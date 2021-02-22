//
//  Pokemon.swift
//  PokemonCards
//
//  Created by BOBUR on 22/02/2021.
//

import Foundation




struct Pokemon: Decodable {
    let name: String
    let imageUrl: String?
    let number: String
    let subtype: String?
    let supertype: String?
    
    enum CodingKeys: String, CodingKey {
        case name, subtype,  supertype
        case imageUrl
        case number
      
    }
}
struct Card: Decodable {
    let cards: [Pokemon]
}
