//
//  Observable.swift
//  FilmStudio
//
//  Created by MacBook on 16.06.2023.
//

import Foundation

class Observable<T> {
    
    // Thanks to didSet listener will update when data changed
    var value : T? {
        didSet{
            DispatchQueue.main.async {
                self.listener?(self.value)
            }
        }
    }
    
    init( _ value : T?){
        self.value = value
    }
    
    private var listener : ((T?) -> Void)?
    
    func bind(_ listener : @escaping((T?)-> Void)){
        listener(value)
        self.listener = listener
    }
    
}
