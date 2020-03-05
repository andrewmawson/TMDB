//
//  MovieDetailsViewPresenter.swift
//  BankTest
//
//  Created by K10 on 05/03/2020.
//  Copyright (c) 2020 k10studios. All rights reserved.

class MovieDetailsViewPresenter: MovieDetailsViewPresenterProtocol {
    weak var view: MovieDetailsViewViewProtocol?
	var interactor: MovieDetailsViewInteractorInputProtocol?
    var wireframe: MovieDetailsViewWireframeProtocol?
}

extension MovieDetailsViewPresenter: MovieDetailsViewInteractorOutputProtocol {
    
}
