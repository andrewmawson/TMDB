//
//  BankTestTests.swift
//  BankTestTests
//
//  Created by K10 on 05/03/2020.
//  Copyright © 2020 k10studios. All rights reserved.
//

import Foundation

enum FixtureError: Error {
    case cannotLoadMainBundle
    case cannotLoadFixturesBundle
    case cannotLoadFixture
    case cannotLoadData
    case cannotParseData
}

class TestsFixtures {
}

func fixtureWithName(_ name: String, ofType: String = "json") throws -> Data {
    var bundle = Bundle(identifier: "BankTestTests")
    if bundle == nil {
        bundle = Bundle(for: TestsFixtures.self)
    }
    guard let testBundle = bundle else {
        print(FixtureError.cannotLoadMainBundle)
        throw FixtureError.cannotLoadMainBundle
    }

    guard let fixturesBundlePath = testBundle.path(forResource: "fixtures", ofType: "bundle") else {
        print(FixtureError.cannotLoadFixturesBundle)
        throw FixtureError.cannotLoadFixturesBundle
    }
    guard let fixturesBundle = Bundle(path: fixturesBundlePath) else {
        print(FixtureError.cannotLoadFixturesBundle)
        throw FixtureError.cannotLoadFixturesBundle
    }
    guard let path = fixturesBundle.path(forResource: name, ofType: ofType) else {
        print(FixtureError.cannotLoadFixture)
        throw FixtureError.cannotLoadFixture
    }
    guard let data = try? Data(contentsOf: URL(fileURLWithPath: path)) else {
        print(FixtureError.cannotLoadData)
        throw FixtureError.cannotLoadData
    }

	return data
//    do {
//        try JSONSerialization.jsonObject(with: data, options: .allowFragments)
//    } catch (let value) {
//        print(value)
//    }
//
//    guard let JSON = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) else {
//        print(FixtureError.cannotParseData)
//        throw FixtureError.cannotParseData
//    }
//
//    return JSON as AnyObject
}
