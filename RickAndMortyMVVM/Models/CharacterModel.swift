//
//  CharacterModel.swift
//  RickAndMortyMVVM
//
//  Created by Hakan Adanur on 12.11.2022.
//

import Foundation

struct CharacterBase : Codable {
    let results : [Character]
}

struct Character : Codable {
    let name : String
    let species : String
    let status : String
    let image : String
    let gender : String
}
