//
//  CharacterViewModel.swift
//  RickAndMortyMVVM
//
//  Created by Hakan Adanur on 13.11.2022.
//

import Foundation

protocol CharacterVMDelegate {
    func fetchCharacterOnSuccess()
    func fetchCharacterOnUnsuccess()
}

class CharacterViewModel {
    let service = Webservice()
    var characters = [Character]()
    var delegate : CharacterVMDelegate?
    
    
    func fetchCharacters() {
        service.downloadCharacters { result in
            if let result = result {
                self.characters = result.results
                self.delegate?.fetchCharacterOnSuccess()
            } else {
                self.delegate?.fetchCharacterOnUnsuccess()
            }
        }
    }
}
