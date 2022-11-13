//
//  HomeTableViewCell.swift
//  RickAndMortyMVVM
//
//  Created by Hakan Adanur on 12.11.2022.
//

import UIKit

class CharacterTableViewCell: UITableViewCell {
    @IBOutlet weak var characterView: UIView!
    @IBOutlet weak var characterImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var speciesLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        characterView.layer.cornerRadius = 3
        characterView.layer.borderWidth = 0.5
        characterView.backgroundColor = .systemGray6
        characterImageView.layer.cornerRadius = 43
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
