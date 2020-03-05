//
//  MovieDetailsView.swift
//  BankTest
//
//  Created by K10 on 05/03/2020.
//  Copyright (c) 2020 k10studios. All rights reserved.
//

import UIKit

class MovieDetailsView: UIViewController {
    //MARK: - Variables
    var presenter: MovieDetailsPresenterProtocol?
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension MovieDetailsView {
	//MARK: - IBActions
}

extension MovieDetailsView: MovieDetailsViewProtocol {
    
}
