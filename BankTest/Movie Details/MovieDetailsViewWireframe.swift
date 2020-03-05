//
//  MovieDetailsViewWireframe.swift
//  BankTest
//
//  Created by K10 on 05/03/2020.
//  Copyright (c) 2020 k10studios. All rights reserved.
//
import UIKit

class MovieDetailsViewWireframe:  MovieDetailsViewWireframeProtocol {
    static func createMovieDetailsViewModule() -> UIViewController {
        guard let view = UIStoryboard(name: "MovieDetailsViewView", bundle: nil).instantiateViewController(withIdentifier: "MovieDetailsViewView") as? MovieDetailsViewView else {
            return UIViewController()
        }
        let presenter: MovieDetailsViewPresenterProtocol & MovieDetailsViewInteractorOutputProtocol = MovieDetailsViewPresenter()
        let interactor: MovieDetailsViewInteractorInputProtocol = MovieDetailsViewInteractor()
        let wireframe: MovieDetailsViewWireframeProtocol = MovieDetailsViewWireframe()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.wireframe = wireframe
        interactor.presenter = presenter
        
        return view
    }
    
}
