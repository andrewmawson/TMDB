//
//  MovieListViewProtocols.swift
//  BankTest
//
//  Created by K10 on 05/03/2020.
//  Copyright (c) 2020 k10studios. All rights reserved.
//
import UIKit

protocol MovieListViewViewProtocol: class {
    
}

protocol MovieListViewPresenterProtocol: class {
    var view: MovieListViewViewProtocol? { get set }
    var interactor: MovieListViewInteractorInputProtocol? { get set }
    var wireframe: MovieListViewWireframeProtocol? { get set }
}

protocol MovieListViewInteractorInputProtocol: class {
    var presenter: MovieListViewInteractorOutputProtocol? { get set }
}

protocol MovieListViewInteractorOutputProtocol: class {
}

protocol MovieListViewWireframeProtocol: class {
    static func createMovieListViewModule() -> UIViewController
}
