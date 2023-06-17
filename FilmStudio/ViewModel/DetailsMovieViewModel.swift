//
//  DetailsMovieViewModel.swift
//  FilmStudio
//
//  Created by MacBook on 17.06.2023.
//

import Foundation

class DetailsMovieViewModel {
    var movie : Movie
    
    var movieImageURL : URL?
    var movieTitle : String
    var movieDescription : String
    var movieID : Int
    
    init(movie : Movie){
        self.movie = movie
        self.movieID = movie.id
        self.movieTitle = movie.title ?? movie.name ?? ""
        self.movieDescription = movie.overview ?? ""
        self.movieImageURL = makeImageURL(movie.backdropPath ?? "")
    }
    
    func makeImageURL(_ imageCode : String) -> URL? {
        return URL(string: "\(NetworkConstants.shared.imageServerAddress)\(imageCode)")
    }
    
    
}
