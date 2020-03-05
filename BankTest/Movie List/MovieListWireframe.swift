//
//  MovieListWireframe.swift
//  BankTest
//
//  Created by K10 on 05/03/2020.
//  Copyright (c) 2020 k10studios. All rights reserved.
//
import UIKit

class MovieListWireframe:  MovieListWireframeProtocol {
    static func createMovieListModule() -> UIViewController {
        guard let view = UIStoryboard(name: "MovieListView", bundle: nil).instantiateViewController(withIdentifier: "MovieListView") as? MovieListView else {
            return UIViewController()
        }
        let presenter: MovieListPresenterProtocol & MovieListInteractorOutputProtocol = MovieListPresenter()
        let interactor: MovieListInteractorInputProtocol = MovieListInteractor()
        let wireframe: MovieListWireframeProtocol = MovieListWireframe()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.wireframe = wireframe
        interactor.presenter = presenter
        
        return view
    }
	
	func showMovieDetails(from view:MovieListViewProtocol, movie:MovieViewModel) {
		guard let view = view as? UIViewController else {
			return
		}
		
		let details = MovieDetailsWireframe.createMovieDetailsModule(movie: movie)
		view.show(details, sender: self)
	}
    
}
