//
//  MovieDetailsViewProtocols.swift
//  BankTest
//
//  Created by K10 on 05/03/2020.
//  Copyright (c) 2020 k10studios. All rights reserved.
//
import UIKit

protocol MovieDetailsViewViewProtocol: class {
    
}

protocol MovieDetailsViewPresenterProtocol: class {
    var view: MovieDetailsViewViewProtocol? { get set }
    var interactor: MovieDetailsViewInteractorInputProtocol? { get set }
    var wireframe: MovieDetailsViewWireframeProtocol? { get set }
}

protocol MovieDetailsViewInteractorInputProtocol: class {
    var presenter: MovieDetailsViewInteractorOutputProtocol? { get set }
}

protocol MovieDetailsViewInteractorOutputProtocol: class {
}

protocol MovieDetailsViewWireframeProtocol: class {
    static func createMovieDetailsViewModule() -> UIViewController
}
