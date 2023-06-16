//
//  APICaller.swift
//  FilmStudio
//
//  Created by MacBook on 16.06.2023.
//

import Foundation

enum NetworkError : Error {
    case urlError
    case cannotParseData
}
//escaping içinde network Error ve başarılı durumunu yazdık
public class APICaller {
    static func getTrendingMovies(
        completionHandler : @escaping (_ result: Result<TrendingMovieModel, NetworkError>) -> Void){
            let urlString = NetworkConstants.shared.serverAddress + "trending/all/day?api_key=" + NetworkConstants.shared.apiKey
            guard let url = URL(string: urlString) else {
                completionHandler(.failure(.urlError))
                return
            }
            
            URLSession.shared.dataTask(with: url) { dataResponse, urlResponse, error in
                if error == nil,
                   let data = dataResponse,
                   let resultData = try? JSONDecoder().decode(TrendingMovieModel.self, from: data) {
                    completionHandler(.success(resultData))
                } else {
                    completionHandler(.failure(.cannotParseData))
                }
            }.resume()
            
    }
}
