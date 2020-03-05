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
	private(set) var movies:[MovieViewModel] = []
	
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
		presenter?.interactor?.getLatestMovies()
    }
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return movies.count
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell")
		let movie = movies[indexPath.row]
		cell?.textLabel?.text = movie.original_title + "(" + movie.release_date + ")"
		return cell!
	}
	
	
}

extension MovieListView {
	//MARK: - IBActions
}

extension MovieListView: MovieListViewProtocol {
	func display(movies: [MovieViewModel]) {
		self.movies = movies
		DispatchQueue.main.async {
			self.tableView.reloadData()
		}
		
	}
    
}
