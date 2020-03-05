//
//  MovieDetailsWireframe.swift
//  BankTest
//
//  Created by K10 on 05/03/2020.
//  Copyright (c) 2020 k10studios. All rights reserved.
//
import UIKit

class MovieDetailsWireframe:  MovieDetailsWireframeProtocol {
    static func createMovieDetailsModule() -> UIViewController {
        guard let view = UIStoryboard(name: "MovieDetailsView", bundle: nil).instantiateViewController(withIdentifier: "MovieDetailsView") as? MovieDetailsView else {
            return UIViewController()
        }
        let presenter: MovieDetailsPresenterProtocol & MovieDetailsInteractorOutputProtocol = MovieDetailsPresenter()
        let interactor: MovieDetailsInteractorInputProtocol = MovieDetailsInteractor()
        let wireframe: MovieDetailsWireframeProtocol = MovieDetailsWireframe()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.wireframe = wireframe
        interactor.presenter = presenter
        
        return view
    }
    
}
