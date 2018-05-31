//
//  AddFoodController.swift
//  WhatToEat
//
//  Created by Wortmann, Brandon on 5/24/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

class AddFoodController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate
{
    
    
    var foodLists = FoodLists()
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var type: UIPickerView!
    @IBOutlet weak var tasteSlider: UISlider!
    @IBOutlet weak var timeSlider: UISlider!
    @IBOutlet weak var priceSlider: UISlider!
    @IBOutlet weak var descriptionField: UITextView!
    
    
    @IBOutlet weak var tasteLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    
    let items = ["Dinner" , "Lunch", "Breakfast", "Drinks"]
    
    var item = ""
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return items.count
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return items[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        item = items[row]
    }
    
    
    @IBAction func tasteListener(_ sender: Any)
    {
        tasteLabel.text = "\(Int(tasteSlider.value))"
    }
    
    @IBAction func timeListener(_ sender: Any)
    {
        timeLabel.text = "\(Int(timeSlider.value))"
    }
    
    @IBAction func priceListener(_ sender: Any)
    {
        priceLabel.text = "\(Int(priceSlider.value))"
    }
    
    @IBAction func saveData(_ sender: Any)
    {
        
        if (item == "Dinner")
        {
            foodLists.addDinner(item: Food(name: name.text!, rating: Int (tasteSlider.value), time: Int (timeSlider.value), cost: Int (priceSlider.value), description: descriptionField.text!))
        }
        
        if (item == "Breakfast")
        {
            foodLists.addBreakfast(item: Food(name: name.text!, rating: Int (tasteSlider.value), time: Int (timeSlider.value), cost: Int (priceSlider.value), description: descriptionField.text!))
        }
        
        if (item == "Lunch")
        {
            foodLists.addLunch(item: Food(name: name.text!, rating: Int (tasteSlider.value), time: Int (timeSlider.value), cost: Int (priceSlider.value), description: descriptionField.text!))
        }
        
        if (item == "Drink")
        {
            foodLists.addDrink(item: Food(name: name.text!, rating: Int (tasteSlider.value), time: Int (timeSlider.value), cost: Int (priceSlider.value), description: descriptionField.text!))
        }
        
        name.text = nil
        tasteSlider.value = 1
        timeLabel.text = "1"
        tasteLabel.text = "1"
        timeSlider.value = 1
        priceSlider.value = 1
        priceLabel.text = "1"
        descriptionField.text  = nil
        
        performSegue(withIdentifier: "saveDataSegue", sender: self)
        
        
    }
    
    
    
    
    
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        tasteSlider.isContinuous = false
        timeSlider.isContinuous = false
        priceSlider.isContinuous = false

        // Do any additional setup after loading the view.
    }
    
    

    

}
