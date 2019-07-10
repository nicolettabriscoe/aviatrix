//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
    
    //saying who created the plane and airline
    //i have a property called author
    
    var author = "" //telling the computer the author will be used as a string
    init(myAuthor:String){
        author = myAuthor
    }
    
    //this function should tell us if the airplane is running or not
    var running = false
    
    //starts the airplane, means its running
    func start() -> Bool { //bool stands for boolean which means true or false
        running = true
        return running
    }
    
    func refuel() {
        
    }
    
    func flyTo(destination : String) {
        
    }
    
    func distanceTo(target : String) {
    
    }
    
    func knownDestinations() -> [String] {
       return ["St. Louis"]
    }
}
