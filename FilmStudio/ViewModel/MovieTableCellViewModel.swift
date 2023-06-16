//
//  MovieTableCellViewModel.swift
//  FilmStudio
//
//  Created by MacBook on 17.06.2023.
//

import Foundation

class MovieTableCellViewModel {
    
    var id: Int
    var title: String
    var date : String
    var rating : String
    var imageURL : URL?
    
    init(movie : Movie){
        self.id = movie.id
        self.title = movie.title ?? movie.name ?? ""
        self.rating = "\(movie.releaseDate)/10"
        self.date = movie.releaseDate ?? movie.firstAirDate ?? ""
        self.imageURL = makeImageURL(movie.posterPath ?? "")
    }
    
    private func makeImageURL(_ imageCode : String) -> URL? {
        return URL(string: "\(NetworkConstants.shared.imageServerAddress)\(imageCode)")
    }
    
}
