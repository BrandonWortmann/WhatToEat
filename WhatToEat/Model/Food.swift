//
//  File.swift
//  WhatToEat
//
//  Created by Wortmann, Brandon on 5/23/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import Foundation
import UIKit

public struct Food
{
    var name: String
    var rating: Int
    var time: Int
    var cost: Int
    var description: String
    
    init(name: String, rating: Int, time: Int, cost: Int, description: String)
    {
        self.rating = rating
        self.time = time
        self.cost = cost
        self.name = name
        self.description = description
    }
    
    
    
    
    
}
