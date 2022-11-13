//
//  LocationViewModel.swift
//  RickAndMortyMVVM
//
//  Created by Hakan Adanur on 13.11.2022.
//

import Foundation

protocol LocationVMDelegate {
    func fetchLocationOnSuccess()
    func fetchLocationOnUnsuccess()
}

class LocationViewModel {
    let service = Webservice()
    var locations = [Location]()
    var delegate : LocationVMDelegate?
    
    
    func fetchLocations() {
        service.downloadLocations { result in
            if let result = result {
                self.locations = result.results
                self.delegate?.fetchLocationOnSuccess()
            } else {
                self.delegate?.fetchLocationOnUnsuccess()
            }
        }
    }
}
