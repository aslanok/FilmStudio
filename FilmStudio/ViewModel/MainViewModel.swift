//
//  MainViewModel.swift
//  FilmStudio
//
//  Created by MacBook on 16.06.2023.
//

import Foundation

class MainViewModel {
    
    func numberOfSections() -> Int {
        return 1
    }
    
    func numberOfRows(in section: Int) -> Int {
        return 10
    }
    
    func getData(){
        APICaller.getTrendingMovies { result in
            switch result {
            case .success(let data) :
                print("Top Trending counts : \(data.results.count)")
            case .failure(let error) :
                print(error)
            }
        }
    }
    
    
}
