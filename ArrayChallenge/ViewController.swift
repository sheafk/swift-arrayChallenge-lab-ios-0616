//
//  ViewController.swift
//  ArrayChallenge
//
//  Created by James Campagno on 6/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var shoppingList: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let food: [String] = ["Bananas", "Apples", "Eggs", "Rolls"]
        
        let numbers: [Int] = [6, 4, 12, 4]
        
        shoppingList = makeShoppingList(food, quantityOfItems: numbers)
        print(shoppingList)
        
        
    }
    
    func makeShoppingList(foods: [String], quantityOfItems:[Int]) -> [String] {
        
        var repairedList: [String] = []
        
        for (index, number) in quantityOfItems.enumerate() {
            
            let combinedItem = "\(index + 1). \(number) " + foods[index]
            
            repairedList.append(combinedItem)
        }
        
        return repairedList
        
    }
    
}

