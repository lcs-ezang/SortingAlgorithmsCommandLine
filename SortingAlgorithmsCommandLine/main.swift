//
//  main.swift
//  SortingAlgorithmsCommandLine
//
//  Created by Gordon, Russell on 2018-02-26.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// --------------- Convenience functions ---------------

// Generates a random number between the minimum and maximum values given (inclusive)
func random(between min: UInt32, and max: UInt32) -> Int {
    return Int(arc4random_uniform(max - min + 1) + min)
}

// ----------- Start of main part of program -----------

// Ask the user if they are ready to begin
print("Press any key to generate the unsorted list.", terminator: "")

// Wait for a key to be pressed
let input = readLine()

// Make an empty unsorted array / list
var unsorted : [Int] = []
// Make a unsorted list
var sorted : [Int] = []

// Populate the array
for _ in 1...10 {
    unsorted.append( random(between: 1, and: 50) )
}

// Show the user the contents of the array
print("-----")
print("The contents of the unsorted list:")
for i in 0...unsorted.count - 1 {
    print("Index \(i), value: \(unsorted[i])")
}
print("-----")

// ----------- Write code to sort the array here -----------
print("Now sorting the array...")


//Keep repeating until there are not values in the unsorted

while unsorted.count > 0 {
    
    //Add the last number of the unsorted array to sorted
    sorted.insert(unsorted[unsorted.count-1], at: sorted.count)
    
    //Compare the new value to other values
    for i in stride(from: sorted.count - 1, through: 1, by: -1) {
        
        
        //If the new number is smaller, compare it to the number one down in the list
        if sorted[i] < sorted[i-1] {
            //If the number is smaller, move it on the list
            let temporaryValue = sorted[i]
            sorted[i] = sorted[i-1]
            sorted[i-1] = temporaryValue
        }
    }
    
    //Remove the last number from unsorted list
    unsorted.remove(at: unsorted.count - 1)
    
  
}

// ----------- Final part of the program, show the sorted list -----------
print("-----")
print("The contents of the sorted list:")
for i in 0...sorted.count - 1 {
    print("Index \(i), value: \(sorted[i])")
}
print("-----")


