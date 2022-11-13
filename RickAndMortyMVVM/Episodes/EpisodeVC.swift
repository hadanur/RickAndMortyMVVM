//
//  EpisodeVC.swift
//  RickAndMortyMVVM
//
//  Created by Hakan Adanur on 13.11.2022.
//

import UIKit

class EpisodeVC: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var viewModel = EpisodeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        viewModel.delegate = self
        viewModel.fetchEpisodes()
    }
    
    func makeAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(okButton)
        present(alertController, animated: true)
    }
}

extension EpisodeVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.episodes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EpisodeTableViewCell") as! EpisodeTableViewCell
        let data = viewModel.episodes[indexPath.row]
        cell.episodeLabel.text = data.name
        cell.airDateLabel.text = data.episode
        return cell
    }
}

extension EpisodeVC : EpisodeVMDelegate {
    func fetchEpisodeOnSuccess() {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
    func fetchEpisodeOnUnsuccess() {
        DispatchQueue.main.async {
            self.makeAlert(title: "Error", message: "No internet Connection")
        }
    }
}
