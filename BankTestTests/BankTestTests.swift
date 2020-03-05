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
				
				XCTAssertNotNil(resultModel)
				XCTAssertEqual(movies.count, 20)
				XCTAssertEqual(firstMovie.title, "A Rainy Day in New York")
				   
			}else{
				XCTAssertTrue(false)
			}
		} catch {
			XCTAssertTrue(false)
		}
    }

}
