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
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
