//
//  MovieListViewWireframe.swift
//  BankTest
//
//  Created by K10 on 05/03/2020.
//  Copyright (c) 2020 k10studios. All rights reserved.
//
import UIKit

class MovieListViewWireframe:  MovieListViewWireframeProtocol {
    static func createMovieListViewModule() -> UIViewController {
        guard let view = UIStoryboard(name: "MovieListViewView", bundle: nil).instantiateViewController(withIdentifier: "MovieListViewView") as? MovieListViewView else {
            return UIViewController()
        }
        let presenter: MovieListViewPresenterProtocol & MovieListViewInteractorOutputProtocol = MovieListViewPresenter()
        let interactor: MovieListViewInteractorInputProtocol = MovieListViewInteractor()
        let wireframe: MovieListViewWireframeProtocol = MovieListViewWireframe()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.wireframe = wireframe
        interactor.presenter = presenter
        
        return view
    }
    
}
