//
//  MovieListInteractor.swift
//  BankTest
//
//  Created by K10 on 05/03/2020.
//  Copyright (c) 2020 k10studios. All rights reserved.
//
import Foundation

class MovieListInteractor: MovieListInteractorInputProtocol {
	private let APIService = MovieAPIService()
	
	func getLatestMovies() {
		
		APIService.getLatestMovies { movies in
			if let movies = movies {
				self.presenter?.gotMovies(movies: movies)
			}
		}		
	}
	
    weak var presenter: MovieListInteractorOutputProtocol?
}
