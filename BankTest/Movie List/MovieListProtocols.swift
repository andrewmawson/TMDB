//
//  MovieListProtocols.swift
//  BankTest
//
//  Created by K10 on 05/03/2020.
//  Copyright (c) 2020 k10studios. All rights reserved.
//
import UIKit
import Foundation

protocol MovieListViewProtocol: class {
	func display(movies:[MovieViewModel])
}

protocol MovieListPresenterProtocol: class {
    var view: MovieListViewProtocol? { get set }
    var interactor: MovieListInteractorInputProtocol? { get set }
    var wireframe: MovieListWireframeProtocol? { get set }
}

protocol MovieListInteractorInputProtocol: class {
    var presenter: MovieListInteractorOutputProtocol? { get set }
	func getLatestMovies()
}

protocol MovieListInteractorOutputProtocol: class {
	func gotMovies(movies:[MovieViewModel])
}

protocol MovieListWireframeProtocol: class {
    static func createMovieListModule() -> UIViewController
}
