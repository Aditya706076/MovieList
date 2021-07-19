//
//  jsonFile.swift
//  MovieList
//
//  Created by Aditya on 19/07/21.
//

import Foundation
func readJsonFile(forName name: String)-> Data?
{
    do{
        if let bundlePath = Bundle.main.path(forResource: "movies", ofType: "json") {
            let data = try String(contentsOfFile: bundlePath).data(using: .utf8)
            return data
        }
    } catch {
        print("error: \(error)")
    }
    return nil
}

func parse(jsonData : Data) -> movieData? {
    do {
        let decodedData = try JSONDecoder().decode(movieData.self, from: jsonData)
        return decodedData
        
    } catch {
        print("error: \(error)")
    }
    return nil
}
