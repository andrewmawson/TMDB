//
//  MovieViewModel.swift
//  BankTest
//
//  Created by K10 on 05/03/2020.
//  Copyright © 2020 k10studios. All rights reserved.
//

import Foundation

struct ResultsModel: Codable {
    var results: [MovieViewModel]
}

struct MovieViewModel: Codable {
	let id:Int
	let title:String
	let overview:String
	let release_date:String
}

/*
Example key values in JSON response:

"popularity": 1194.115,
"vote_count": 597,
"video": false,
"poster_path": "\/uPGq1mkEXznUpapDmOSxbsybjfp.jpg",
"id": 475303,
"adult": false,
"backdrop_path": "\/6fkqwqLEcDZOEAnBBfKAniwNxtx.jpg",
"original_language": "en",
"original_title": "A Rainy Day in New York",
"genre_ids": [35, 10749],
"title": "A Rainy Day in New York",
"vote_average": 6.7,
"overview": "Two young people arrive in New York to spend a weekend, but once they arrive they're met with bad weather and a series of adventures.",
"release_date": "2019-07-26"

*/
