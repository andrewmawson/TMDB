//
//  MovieDetailsProtocols.swift
//  BankTest
//
//  Created by K10 on 05/03/2020.
//  Copyright (c) 2020 k10studios. All rights reserved.
//
import UIKit

protocol MovieDetailsViewProtocol: class {
	func display(movieDetails:MovieDetailsViewModel)
}

protocol MovieDetailsPresenterProtocol: class {
    var view: MovieDetailsViewProtocol? { get set }
    var interactor: MovieDetailsInteractorInputProtocol? { get set }
    var wireframe: MovieDetailsWireframeProtocol? { get set }
}

protocol MovieDetailsInteractorInputProtocol: class {
    var presenter: MovieDetailsInteractorOutputProtocol? { get set }
	func getAdditionalMovieInfo(movie:MovieViewModel)
}

protocol MovieDetailsInteractorOutputProtocol: class {
	func gotMovieDetails(movies:MovieDetailsViewModel)
}

protocol MovieDetailsWireframeProtocol: class {
    static func createMovieDetailsModule(movie:MovieViewModel) -> UIViewController
}
