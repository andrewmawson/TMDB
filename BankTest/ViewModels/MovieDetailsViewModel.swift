//
//  MovieViewModel.swift
//  BankTest
//
//  Created by K10 on 05/03/2020.
//  Copyright © 2020 k10studios. All rights reserved.
//

import Foundation

struct GenreViewModel: Codable {
	let id:Int
	let name:String
}

struct MovieDetailsViewModel: Codable {
	let id:Int
	let title:String
	let overview:String
	let release_date:String
	let runtime:Int
	let vote_average:Double
	let backdrop_path:String?
	let genres:[GenreViewModel]?
	
	var prettyPrinted:String {
		let newLine = "\n\n"
		return title + newLine + overview + newLine + "Vote: \(vote_average)" + newLine + "RunTime: \(runtime) mins" + newLine + genresPrettyPrinted
	}
	
	private var genresPrettyPrinted:String {
		var genreText = "Genres: "
		if let gernes = genres {
			for genre in gernes {
				genreText = genreText + genre.name + " "
			}
		}else{
			genreText = genreText + "None"
		}
		return genreText
	}
}

/*
Example key values in JSON response:

{
	"adult": false,
	"backdrop_path": "/pvx0FcXzFc47VfaPuIrFC8Oolc6.jpg",
	"belongs_to_collection": null,
	"budget": 0,
	"genres": [{
		"id": 35,
		"name": "Comedy"
	}],
	"homepage": "",
	"id": 641483,
	"imdb_id": "tt7453044",
	"original_language": "en",
	"original_title": "Holly Slept Over",
	"overview": "This unconventional comedy follows the relationship struggles of a married couple trying to conceive, their friends who have lost their spark, and the tension that ensues when an old college roommate stays over for the weekend.",
	"popularity": 24.466,
	"poster_path": "/u6vw5DqEvcCMreliZxLamykmWKm.jpg",
	"production_companies": [],
	"production_countries": [{
		"iso_3166_1": "US",
		"name": "United States of America"
	}],
	"release_date": "2020-03-02",
	"revenue": 0,
	"runtime": 87,
	"spoken_languages": [{
		"iso_639_1": "en",
		"name": "English"
	}],
	"status": "Released",
	"tagline": "",
	"title": "Holly Slept Over",
	"video": false,
	"vote_average": 6.5,
	"vote_count": 2
}
*/
