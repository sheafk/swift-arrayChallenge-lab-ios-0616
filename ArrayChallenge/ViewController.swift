//
//  ViewController.swift
//  ArrayChallenge
//
//  Created by James Campagno on 6/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var shoppingList: [String] = [] //This is a property

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let food: [String] = ["Bananas", "Apples", "Eggs", "Rolls"] // Here I am declaring two arrays inside of the view controller.
        
        let numbers: [Int] = [6, 4, 12, 4]
        
        shoppingList = makeShoppingList(food, quantityOfItems: numbers) //I am assigning a value to the property shoppingList. The value is the return value of my function with the two arrays as arguments.
        print(shoppingList)
        
        
    }
    
    func makeShoppingList(foods: [String], quantityOfItems:[Int]) -> [String] { //This line means there is a function where two arguments are called 1. an array of strings and 2. an array of integers. -> means it will return an array of strings.
        
        var repairedList: [String] = [] //In this line I created an empty array to hold the combined strings.
        
        for (index, number) in quantityOfItems.enumerate() { //In this line I enumerated over the arrays calling the index number and item, one by one.
            
            let combinedItem = "\(index + 1). \(number) " + foods[index] //This is where the element from array 1 and array 2 join to form a new String. I also added some formatting like the index+ 1 which will make a list. (ie. 1. 4 Bananas..)
            
            repairedList.append(combinedItem) //Now I am adding the new String to the array.
        }
        
        return repairedList //Here is where the final, newly created array of Strings is returned. Now I can call it above!
        
    }
    
}

