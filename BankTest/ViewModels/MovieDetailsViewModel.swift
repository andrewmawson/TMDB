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
	
	var displayText:String {
		let newLine = "\n\n"
		return title + newLine + overview + newLine + "Vote: \(vote_average)" + newLine + "RunTime: \(runtime) mins" + newLine + genresDisplayText
	}
	
	private var genresDisplayText:String {
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
