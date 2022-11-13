//
//  EpisodeTableViewCell.swift
//  RickAndMortyMVVM
//
//  Created by Hakan Adanur on 13.11.2022.
//

import UIKit

class EpisodeTableViewCell: UITableViewCell {
    @IBOutlet weak var episodeView: UIView!
    @IBOutlet weak var episodeLabel: UILabel!
    @IBOutlet weak var airDateLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        episodeView.layer.cornerRadius = 3
        episodeView.layer.borderWidth = 0.5
        episodeView.backgroundColor = .systemGray6
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
