//
//  MovieDetailsPresenter.swift
//  BankTest
//
//  Created by K10 on 05/03/2020.
//  Copyright (c) 2020 k10studios. All rights reserved.

class MovieDetailsPresenter: MovieDetailsPresenterProtocol {
    weak var view: MovieDetailsViewProtocol?
	var interactor: MovieDetailsInteractorInputProtocol?
    var wireframe: MovieDetailsWireframeProtocol?
}

extension MovieDetailsPresenter: MovieDetailsInteractorOutputProtocol {
    
}
