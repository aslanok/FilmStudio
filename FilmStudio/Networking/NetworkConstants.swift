//
//  NetworkConstants.swift
//  FilmStudio
//
//  Created by MacBook on 16.06.2023.
//

import Foundation

class NetworkConstants {
    
    public static var shared : NetworkConstants = NetworkConstants()
    
    private init() {
        
    }
    
    public var apiKey : String {
        get{
            return "a35b2e6967e245884e30601184694d7c"
        }
    }
    
    public var serverAddress : String {
        get {
            return "https://api.themoviedb.org/3/"
        }
    }
    
    public var imageServerAddress : String {
        get {
            return "https://image.tmdb.org/t/p/w500/"
        }
    }
    
    
}
