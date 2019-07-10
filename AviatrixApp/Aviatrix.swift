//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
    
    var currentLocation = "St. Louis"
    
    //saying who created the plane and airline
    //i have a property called author
    
    var author = "" //telling the computer the author will be used as a string
    init(myAuthor:String){
        author = myAuthor
    }
    
    var distanceTraveled = 0.0
    var maxFuel = 5000
    var fuelLevel = 5000.0
    var milesPerGallon = 0.4
    
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
        distanceTraveled += Double(distanceTo(target: destination, current: currentLocation))
        fuelLevel = fuelLevel - distanceTraveled * milesPerGallon
        currentLocation = destination
    }
    //i want to tell every airplane that i create from this class how far places are
    //i need the place and distance
    
    func distanceTo(target : String, current: String)-> Int {
        //i need to get information from the aviatrix data file
        let data = AviatrixData()
        return data.knownDistances[current]![target]!
        //swift uses ! to mean not, but also uses ! to say I know there is definitely data here
    }
    
    //want to tell every plane that i create from the aviatrix class where they can fly
    func knownDestinations() -> [String] {
      //change this function so i return all the options for destinations
        //I need to get information from the aviatrixData.swift file
        let data = AviatrixData()
        //I called the AviatrixData class
        return Array(data.knownDistances.keys)
        //I stored all of the keys or destinations in an Array
    }
}
