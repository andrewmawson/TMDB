//
//  MovieDetailsInteractor.swift
//  BankTest
//
//  Created by K10 on 05/03/2020.
//  Copyright (c) 2020 k10studios. All rights reserved.
//

class MovieDetailsInteractor: MovieDetailsInteractorInputProtocol {
	private let APIService = MovieAPIService()
	
	func getAdditionalMovieInfo(movie:MovieViewModel) {
		APIService.getAdditionalMovieInfo(completionBlock: { (movieInfo) in
			//TODO
			
		}, movieId: movie.id)
	}
	
    weak var presenter: MovieDetailsInteractorOutputProtocol?
}
