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
	var movieDetails:MovieDetailsViewModel? = nil
	@IBOutlet weak var movieImageView: UIImageView!
	@IBOutlet var movieTitleLabel: UILabel!
	//MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
		assert(movie != nil, "Movie can not be nil")
		movieTitleLabel.text = movie.title + "\n\n" + movie.overview
		presenter?.interactor?.getAdditionalMovieInfo(movie: movie)
	}
}

extension MovieDetailsView {
	//MARK: - IBActions
}

extension MovieDetailsView: MovieDetailsViewProtocol {
	func display(movieDetails: MovieDetailsViewModel) {
		self.movieDetails = movieDetails
		DispatchQueue.main.async {
			self.movieTitleLabel.text =  movieDetails.prettyPrinted
		}
	}
	
    
}
