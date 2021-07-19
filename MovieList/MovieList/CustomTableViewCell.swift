//
//  CustomTableViewCell.swift
//  MovieList
//
//  Created by Aditya on 19/07/21.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var movieOverview: UILabel!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var moviePoster: UIImageView!
    @IBAction func movieBookAction(_ sender: Any) {
        print("Cell Tapped!")
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
