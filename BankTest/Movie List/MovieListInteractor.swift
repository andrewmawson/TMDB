//
//  MovieListInteractor.swift
//  BankTest
//
//  Created by K10 on 05/03/2020.
//  Copyright (c) 2020 k10studios. All rights reserved.
//
import Foundation

class MovieListInteractor: MovieListInteractorInputProtocol {
	func getLatestMovies() {
		// TODO API Call and pass results to presenter
	}
	
    weak var presenter: MovieListInteractorOutputProtocol?
}
