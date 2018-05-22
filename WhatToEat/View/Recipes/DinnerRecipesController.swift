//
//  DinnerRecipesController.swift
//  WhatToEat
//
//  Created by Wortmann, Brandon on 5/22/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

class DinnerRecipesController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
   
    

    
    @IBOutlet weak var dinnerRecipesTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dinnerRecipesTable.delegate = self
        dinnerRecipesTable.dataSource = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }

   

    

}
