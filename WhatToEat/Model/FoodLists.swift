//
//  File.swift
//  WhatToEat
//
//  Created by Wortmann, Brandon on 5/22/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

public struct FoodLists
{
    var dinner: Array<Food>
    var lunch: Array<Food>
    var breakfast: Array<Food>
    var drinks: Array<Food>
    
    init()
    {
        dinner = Array()
        lunch = Array()
        breakfast = Array()
        drinks = Array()
    }
    
    mutating func addDinner(item :Food)
    {
        dinner.append(item)
        UserDefaults.standard.set(dinner, forKey: "dinnerList")
    }
    
    mutating func addLunch(item :Food)
    {
        lunch.append(item)
        UserDefaults.standard.set(dinner, forKey: "lunchList")
    }
    
    mutating func addBreakfast(item :Food)
    {
        breakfast.append(item)
        UserDefaults.standard.set(dinner, forKey: "breakfastList")
    }
    
   mutating func addDrink(item :Food)
    {
        drinks.append(item)
        UserDefaults.standard.set(drinks, forKey: "drinksList")
    }
    
    func getDinnerItem() ->String
    {
        return dinner[Int(arc4random_uniform(UInt32(dinner.count)))].name
    }
    
    func getBreakfastItem() ->String
    {
        return breakfast[Int(arc4random_uniform(UInt32(breakfast.count)))].name
    }
    
    func getLunchItem() ->String
    {
        return dinner[Int(arc4random_uniform(UInt32(lunch.count)))].name
    }
    
    func getDrinksItem() ->String
    {
        return dinner[Int(arc4random_uniform(UInt32(drinks.count)))].name
    }
    
    mutating func loadEverything()
    {
        if let x = UserDefaults.standard.object(forKey: "dinnerList") as? Array<Food>
        {
            dinner = x
        }
        
        if let x = UserDefaults.standard.object(forKey: "lunchList") as? Array<Food>
        {
            lunch = x
        }
        
        if let x = UserDefaults.standard.object(forKey: "breakfastList") as? Array<Food>
        {
            breakfast = x
        }
        
        if let x = UserDefaults.standard.object(forKey: "drinksList") as? Array<Food>
        {
            drinks = x
        }
        
    }
    
}
