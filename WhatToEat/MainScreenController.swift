//
//  ViewController.swift
//  WhatToEat
//
//  Created by Wortmann, Brandon on 5/18/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

class MainScreenController: UIViewController
{

    @IBOutlet weak var whatToEatButton: UIButton!
    @IBOutlet weak var recipesButton: UIButton!
    lazy var foodLists: FoodLists = FoodLists()
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(_ animated: Bool)
    {
        foodLists.loadEverything()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let addFood = segue.destination as! AddFoodController
        addFood.foodLists = foodLists

        let pickFood = segue.destination as! WTEController
        pickFood.foodLists = foodLists
    }
    
    @IBAction func newRecipePressed(_ sender: Any)
    {
        performSegue(withIdentifier: "addFoodSegue", sender: self)
    }
    
    @IBAction func wtePressed(_ sender: Any)
    {
        performSegue(withIdentifier: "pickFoodSegue", sender: self)
    }
}

