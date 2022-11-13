//
//  LocationTableViewCell.swift
//  RickAndMortyMVVM
//
//  Created by Hakan Adanur on 13.11.2022.
//

import UIKit

class LocationTableViewCell: UITableViewCell {
    @IBOutlet weak var locationView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dimensionLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        locationView.layer.borderWidth = 0.5
        locationView.layer.cornerRadius = 5
        locationView.backgroundColor = .systemGray6
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
