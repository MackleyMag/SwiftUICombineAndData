//
//  ModelData.swift
//  SwiftUICombineAndData
//
//  Created by Mackley Magalhães da Silva on 21/11/23.
//

import Foundation

var faqData: [FAQ] = load("faqData.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Could't find \(filename) in main bundle")
    }
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Could't load \(filename) from main bundle: \n\(error)_")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Could't parse \(filename) as \(T.self): \n_\(error)")
    }
}
