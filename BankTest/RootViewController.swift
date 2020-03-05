//
//  RootViewController.swift
//  BankTest
//
//  Created by K10 on 05/03/2020.
//  Copyright © 2020 k10studios. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		let movieList = MovieListWireframe.createMovieListModule()
		show(movieList, sender: self)
	}


}

