//
//  MovieAPIService.swift
//  BankTest
//
//  Created by K10 on 05/03/2020.
//  Copyright © 2020 k10studios. All rights reserved.
//

import Foundation
import UIKit

class MovieAPIService: NSObject {
	private let baseURL = "https://api.themoviedb.org/3/"
	private let apiKey = "api_key=9c220d81a06bb0d860b74cdfa7223e98"
	private let session = URLSession.shared
	
	func getLatestMovies(completionBlock:@escaping( ([MovieViewModel]?) -> () )){
		let formatter = DateFormatter()
		formatter.dateFormat = "yyyy-MM-dd"
		
		let today = formatter.string(from: Date())
		let oneWeekAgo = formatter.string(from: Date(timeInterval: -(60*60*24*7), since: Date()))
		
		let path = "discover/movie?primary_release_date.gte=\(oneWeekAgo)&primary_release_date.lte=\(today)"
		
		if let url = URL(string: baseURL + path + "&" + apiKey) {
			
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
				}
			})
			
			task.resume()
		}
	}
	
	func getAdditionalMovieInfo(completionBlock:@escaping( (MovieDetailsViewModel?) -> () ), movieId:Int){
		let path = "movie/\(movieId)"
		
		if let url = URL(string: baseURL + path + "?" + apiKey) {
			
			let task = session.dataTask(with: url, completionHandler: { data, response, error in
				let decoder = JSONDecoder()
				do {
					if let data = data {
						let decoded = try decoder.decode(MovieDetailsViewModel.self, from: data)
						completionBlock(decoded)
					}else{
						completionBlock(nil)
					}

				} catch {
					completionBlock(nil)
				}
			})
			
			task.resume()
		}
	}
	
	func getMovieImage(imageId:String) -> UIImage {
		// TODO: Download and return image
		return UIImage()
	}

}
