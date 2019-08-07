//
//  Food_TrackerTests.swift
//  Food TrackerTests
//
//  Created by Derek McCrae on 8/6/19.
//  Copyright © 2019 Derek McCrae. All rights reserved.
//

import XCTest
@testable import Food_Tracker

class Food_TrackerTests: XCTestCase {
    //MARK: Meal Class Tests
    
    //ensure meal intializer returns a meal object when passed valid parameters
    func testMealInitializationSucceeds() {
        //zero rating
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        //highest positive rating
        let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    //ensure meal initializer returns nil when passed negative rating or nil name
    func testMealInitializationFails() {
        //negative rating
        let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -4)
        XCTAssertNil(negativeRatingMeal)
        
        //rating exceeds max
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
        
        //nil string
        let nilStringMeal = Meal.init(name: "", photo: nil, rating: 3)
        XCTAssertNil(nilStringMeal)
    }

}
