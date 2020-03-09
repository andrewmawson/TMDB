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
	
	var listDisplayText:String {
		return title + " (\(release_date))"
	}
	
	var detailDisplayText:String {
		return title + "\n\n" + overview
	}
	
	
}
