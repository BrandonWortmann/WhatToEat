//
//  WTEController.swift
//  WhatToEat
//
//  Created by Wortmann, Brandon on 5/22/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

class WTEController: UIViewController {

    var foodLists = FoodLists()
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBAction func dinnerPresssed(_ sender: Any)
    {
        displayLabel.text = foodLists.getDinnerItem()
        print(foodLists.dinner[0].name)
    }
    
    @IBAction func breakfastPressed(_ sender: Any)
    {
        displayLabel.text = foodLists.getBreakfastItem()
    }
    
    
    @IBAction func lunchPressed(_ sender: Any)
    {
        displayLabel.text = foodLists.getLunchItem()
    }
    
  
    @IBAction func drinksPressed(_ sender: Any)
    {
        displayLabel.text = foodLists.getDrinksItem()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
}
