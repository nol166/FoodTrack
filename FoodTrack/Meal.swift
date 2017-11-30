//
//  Meal.swift
//  FoodTrack
//
//  Created by John McCambridge on 11/29/17.
//  Copyright © 2017 John McCambridge. All rights reserved.
//

import UIKit

class Meal {
    
    //MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //MARK: Initialization
    
    init?(name:String, photo: UIImage?, rating: Int) {
        
        // the name must not be empty
        guard !name.isEmpty else {
            return nil
        }
        
        // the rating must be between 0 and 5 inclusively
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        
        // initialize stored properties
        self.name = name
        self.photo = photo
        self.rating = rating
    }
}
