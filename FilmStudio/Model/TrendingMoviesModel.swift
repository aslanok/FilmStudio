//
//  TrendingMoviesModel.swift
//  FilmStudio
//
//  Created by MacBook on 16.06.2023.
//

import Foundation

// MARK: - Welcome
struct TrendingMovieModel: Decodable {
    let page: Int
    let results: [Movie]
    let totalPages, totalResults: Int

    enum CodingKeys: String, CodingKey {
        case page = "page"
        case results = "results"
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

// MARK: - Result
struct Movie: Decodable {
    let adult: Bool
    let backdropPath: String
    let id: Int
    let name: String?
    let originalLanguage: OriginalLanguage
    let originalName: String?
    let overview, posterPath: String
    let mediaType: MediaType
    let genreIDS: [Int]
    let popularity: Double
    let firstAirDate: String?
    let voteAverage: Double
    let voteCount: Int
    let originCountry: [String]?
    let title, originalTitle, releaseDate: String?
    let video: Bool?

    enum CodingKeys: String, CodingKey {
        case adult = "adult"
        case backdropPath = "backdrop_path"
        case id = "id"
        case name = "name"
        case originalLanguage = "original_language"
        case originalName = "original_name"
        case overview = "overview"
        case posterPath = "poster_path"
        case mediaType = "media_type"
        case genreIDS = "genre_ids"
        case popularity = "popularity"
        case firstAirDate = "first_air_date"
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
        case originCountry = "origin_country"
        case title = "title"
        case originalTitle = "original_title"
        case releaseDate = "release_date"
        case video = "video"
    }
}

enum MediaType: String, Decodable {
    case movie = "movie"
    case tv = "tv"
}

enum OriginalLanguage: String, Decodable {
    case en = "en"
    case es = "es"
    case ko = "ko"
    case ja = "ja" // Varsayılan değer olarak "unknown" ekledik
}

