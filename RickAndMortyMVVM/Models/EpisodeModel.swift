//
//  EpisodeModel.swift
//  RickAndMortyMVVM
//
//  Created by Hakan Adanur on 13.11.2022.
//

import Foundation

struct EpisodeBase : Codable {
    let results : [Episode]
}

struct Episode : Codable {
    let name : String
    let air_date : String
    let episode : String
}
