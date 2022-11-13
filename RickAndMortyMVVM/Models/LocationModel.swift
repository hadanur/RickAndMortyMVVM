//
//  LocationModel.swift
//  RickAndMortyMVVM
//
//  Created by Hakan Adanur on 13.11.2022.
//

import Foundation

struct LocationBase : Codable {
    let results : [Location]
}

struct Location : Codable {
    let name : String
    let type : String
    let dimension : String
}
