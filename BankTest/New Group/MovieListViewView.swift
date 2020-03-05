//
//  MovieListViewView.swift
//  BankTest
//
//  Created by K10 on 05/03/2020.
//  Copyright (c) 2020 k10studios. All rights reserved.
//

import UIKit

class MovieListViewView: UIViewController {
    //MARK: - Variables
    var presenter: MovieListViewPresenterProtocol?
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension MovieListViewView {
	//MARK: - IBActions
}

extension MovieListViewView: MovieListViewViewProtocol {
    
}
