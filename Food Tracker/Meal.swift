//
//  Meal.swift
//  Food Tracker
//
//  Created by Derek McCrae on 8/7/19.
//  Copyright © 2019 Derek McCrae. All rights reserved.
//

import UIKit

class Meal{
    //MARK: Properties
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //MARK: Initialization
    init?(name: String, photo: UIImage?, rating: Int) {
        //name cant be nil
        guard !name.isEmpty else {
            return nil
        }
        
        //rating must be between 0 and 5 inclusively
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        
        //initialize stored properties
        self.name = name
        self.photo = photo
        self.rating = rating
    }
}

