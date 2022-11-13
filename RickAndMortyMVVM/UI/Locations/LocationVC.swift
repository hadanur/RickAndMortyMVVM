//
//  LocationVC.swift
//  RickAndMortyMVVM
//
//  Created by Hakan Adanur on 13.11.2022.
//

import UIKit

class LocationVC: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var viewModel = LocationViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.separatorStyle = .none
        tableView.dataSource = self
        viewModel.fetchLocations()
        viewModel.delegate = self
    }
}

extension LocationVC: UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.locations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LocationTableViewCell") as! LocationTableViewCell
        let data = viewModel.locations[indexPath.row]
        cell.nameLabel.text = data.name
        
        if cell.dimensionLabel.text == "unknown" {
            cell.dimensionLabel.text = "?"
        } else {
            cell.dimensionLabel.text = data.dimension
        }
        cell.typeLabel.text = data.type
        return cell
    }
}

extension LocationVC: LocationVMDelegate {
    func fetchLocationOnSuccess() {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
    func fetchLocationOnUnsuccess() {
        DispatchQueue.main.async {
            self.showAlert(title: "Error", message: "No internet Connection")
        }
    }
}
