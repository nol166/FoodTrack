//
//  FoodTrackTests.swift
//  FoodTrackTests
//
//  Created by John McCambridge on 11/27/17.
//  Copyright © 2017 John McCambridge. All rights reserved.
//

import XCTest
@testable import FoodTrack

class FoodTrackTests: XCTestCase {
    
    
    //MARK: Meal Class Tests
    
    // Confirm that the Meal initializer returns a Meal object when passed valid parameters.
    func testMealInitializationSucceeds() {
        // zero rating
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        // highest positive rating
        let positiveRatingMeal = Meal.init(name: "Postitive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    // Confirm that the meal initializer returns nil when passed a negative rating or an empty name
    func testMealInitializationFails() {
        // negative rating
        let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        // rating exceeds maximum
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        
        // empty string
        let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringMeal)
    }
    
    
}
