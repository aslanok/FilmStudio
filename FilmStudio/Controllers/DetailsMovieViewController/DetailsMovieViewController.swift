//
//  DetailsMovieViewController.swift
//  FilmStudio
//
//  Created by MacBook on 17.06.2023.
//

import UIKit
import SDWebImage

class DetailsMovieViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    //viewModel
    var viewModel : DetailsMovieViewModel
    
    init(viewModel : DetailsMovieViewModel){
        self.viewModel = viewModel
        super.init(nibName: "DetailsMovieViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configView()
    }
    
    func configView(){
//        imageView.sd_setImage(with: view)
        self.title = "Movie Details"
        titleLabel.text = viewModel.movieTitle
        descriptionLabel.text = viewModel.movieDescription
        imageView.sd_setImage(with: viewModel.movieImageURL)
        
        
    }


}
