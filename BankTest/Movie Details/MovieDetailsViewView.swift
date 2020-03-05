//
//  MovieDetailsViewView.swift
//  BankTest
//
//  Created by K10 on 05/03/2020.
//  Copyright (c) 2020 k10studios. All rights reserved.
//

import UIKit

class MovieDetailsViewView: UIViewController {
    //MARK: - Variables
    var presenter: MovieDetailsViewPresenterProtocol?
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension MovieDetailsViewView {
	//MARK: - IBActions
}

extension MovieDetailsViewView: MovieDetailsViewViewProtocol {
    
}
