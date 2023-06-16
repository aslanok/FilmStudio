//
//  MainMovieCell.swift
//  FilmStudio
//
//  Created by MacBook on 17.06.2023.
//

import UIKit

class MainMovieCell: UITableViewCell {
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var movieImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var rateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        backView.addBorder(color: .label, width: 1)
        backView.round()
        
        movieImageView.round(5)
    }

    func setUpCell(viewModel : MovieTableCellViewModel){
        
    }
    
    
}
