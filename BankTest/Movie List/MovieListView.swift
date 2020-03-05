//
//  MovieListView.swift
//  BankTest
//
//  Created by K10 on 05/03/2020.
//  Copyright (c) 2020 k10studios. All rights reserved.
//

import UIKit

class MovieListView: UITableViewController {
    //MARK: - Variables
    var presenter: MovieListPresenterProtocol?
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension MovieListView {
	//MARK: - IBActions
}

extension MovieListView: MovieListViewProtocol {
    
}
