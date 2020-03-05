//
//  MovieAPIService.swift
//  BankTest
//
//  Created by K10 on 05/03/2020.
//  Copyright © 2020 k10studios. All rights reserved.
//

import Foundation

class MovieAPIService: NSObject {
	private let baseURL = "https://api.themoviedb.org/3/"
	private let session = URLSession.shared
	
	func getLatestMovies(completionBlock:@escaping( ([MovieViewModel]?) -> () )){
		let path = "discover/movie?primary_release_date.gte=2014-09-15&primary_release_date.lte=2020-03-05&api_key=9c220d81a06bb0d860b74cdfa7223e98"
		
		if let url = URL(string: baseURL + path) {
			
			let task = session.dataTask(with: url, completionHandler: { data, response, error in
				let decoder = JSONDecoder()
				do {
					if let data = data {
						let decoded = try decoder.decode(ResultsModel.self, from: data)
						completionBlock(decoded.results)
					}else{
						completionBlock(nil)
					}

				} catch {
					completionBlock(nil)
					print("Failed to decode JSON")
				}
			})
			
			task.resume()
		}
	}

}
