//
//  EpisodeViewModel.swift
//  RickAndMortyMVVM
//
//  Created by Hakan Adanur on 13.11.2022.
//

import Foundation

protocol EpisodeVMDelegate {
    func fetchEpisodeOnSuccess()
    func fetchEpisodeOnUnsuccess()
}

class EpisodeViewModel {
    let service = Webservice()
    var episodes = [Episode]()
    var delegate : EpisodeVMDelegate?
    
    
    func fetchEpisodes() {
        service.downloadEpisodes { result in
            if let result = result {
                self.episodes = result.results
                self.delegate?.fetchEpisodeOnSuccess()
            } else {
                self.delegate?.fetchEpisodeOnUnsuccess()
            }
        }
    }
}
