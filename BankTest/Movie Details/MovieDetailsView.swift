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
	var movie:MovieViewModel!
	
	@IBOutlet weak var movieImageView: UIImageView!
	@IBOutlet var movieTitleLabel: UILabel!
	//MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
		assert(movie != nil, "Movie can not be nil")
		movieTitleLabel.text = movie.original_title + "\n\n" + movie.overview
	}
}

extension MovieDetailsView {
	//MARK: - IBActions
}

extension MovieDetailsView: MovieDetailsViewProtocol {
    
}
