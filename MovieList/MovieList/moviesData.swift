//
//  moviesData.swift
//  MovieList
//
//  Created by Aditya on 19/07/21.
//

import Foundation
struct movie : Codable
{
    let title : String
    let overview : String
    let poster_path : String
}

struct movieData : Codable
{
    let movies : [movie]
}

