//
//  MovieListPresenter.swift
//  BankTest
//
//  Created by K10 on 05/03/2020.
//  Copyright (c) 2020 k10studios. All rights reserved.

class MovieListPresenter: MovieListPresenterProtocol {
    weak var view: MovieListViewProtocol?
	var interactor: MovieListInteractorInputProtocol?
    var wireframe: MovieListWireframeProtocol?
}

extension MovieListPresenter: MovieListInteractorOutputProtocol {
	func gotMovies(movies: [MovieViewModel]) {
		 
	}
	
    
}
