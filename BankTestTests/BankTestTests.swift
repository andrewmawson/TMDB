//
//  BankTestTests.swift
//  BankTestTests
//
//  Created by K10 on 05/03/2020.
//  Copyright © 2020 k10studios. All rights reserved.
//

import XCTest
@testable import BankTest

class BankTestTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
	
    func testGetLatestMoviesFromJsonSucceeds() {

		do {
			if let data = try? fixtureWithName("GetLatestMovies") {
				let resultModel = try JSONDecoder().decode(ResultsModel.self, from: data)
				
				let movies = resultModel.results
				let firstMovie = resultModel.results[0]
				let lastMovie = resultModel.results.last
				
				XCTAssertNotNil(resultModel)
				XCTAssertEqual(movies.count, 20)
				XCTAssertEqual(firstMovie.title, "A Rainy Day in New York")
				
				XCTAssertEqual(lastMovie?.title, "Terminator: Dark Fate")
				XCTAssertEqual(lastMovie?.release_date, "2019-10-23")
				   
			}else{
				XCTAssertTrue(false)
			}
		} catch {
			XCTAssertTrue(false)
		}
    }
	
    func testGetMoviesDetailsFromJsonSucceeds() {

		do {
			if let data = try? fixtureWithName("GetMovieDetails") {
				let movie = try JSONDecoder().decode(MovieDetailsViewModel.self, from: data)
				
				XCTAssertEqual(movie.title, "Holly Slept Over")
				XCTAssertEqual(movie.release_date, "2020-03-02")
				XCTAssertEqual(movie.genres?[0].name, "Comedy")
				   
			}else{
				XCTAssertTrue(false)
			}
		} catch {
			XCTAssertTrue(false)
		}
    }

}
