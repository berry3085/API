//
//  Movie.swift
//  API
//
//  Created by 沈秉叡 on 2022/1/29.
//

import Foundation

struct MovieResults: Codable, Hashable {
    let results: [Movie]
}
struct Genres: Codable {
    let id: Int!
    let name: String!
}

struct Movie: Codable, Hashable {
    let id: Int
    let title: String
    let original_title: String
    let backdrop_path: URL
    let release_date: String
    let overview: String
}

let movietype: [String] = ["熱門電影", "上映中", "即將上映", "評分最高"]

