//
//  ViewController.swift
//  RickAndMortyMVVM
//
//  Created by Hakan Adanur on 12.11.2022.
//

import UIKit
import SDWebImage

class CharacterVC: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var viewModel = CharacterViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        viewModel.delegate = self
        viewModel.fetchCharacters()
    }
    }


extension CharacterVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CharacterTableViewCell") as! CharacterTableViewCell
        let data = viewModel.characters[indexPath.row]
        cell.statusLabel.text = data.status
        cell.speciesLabel.text = data.species
        cell.nameLabel.text = data.name
        cell.characterImageView.sd_setImage(with: URL(string: data.image))
        return cell
    }
}

extension CharacterVC : CharacterVMDelegate {
    func fetchCharacterOnSuccess() {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    func fetchCharacterOnUnsuccess() {
        DispatchQueue.main.async {
            self.makeAlert(title: "Error", message: "No internet connection")
        }
       }
}


