//
//  FAA.swift
//  NavigationControllersInCode
//
//  Created by Michael Rogers on 10/10/16.
//  Copyright © 2017 Michael Rogers. All rights reserved.
//

import Foundation
import CoreLocation
// This is our model class. The FAA controls the airlines ... well, at least when they are in US airspace

struct Airline {
    var name:String
    var profits:Double
    var homebase:String
    var numEmployees:Int
    var citiesFlown:[String]
}

struct FAA {
    
    static var faa:FAA = FAA()
    
    private init(){}
    
    private var airlines:[Airline] = [
        Airline(name: "United", profits: 25.0, homebase: "Chicago",numEmployees: 2500,citiesFlown:["New York", "Toronto", "London", "Paris"]),
        Airline(name: "Delta", profits: 50.0, homebase: "Atlanta", numEmployees: 3500,citiesFlown:["Cairo", "Tel Aviv", "Ankara", "Tokyo", "Beijing"]),
        Airline(name: "Jet Airways", profits: 87.50, homebase: "Mumbai", numEmployees: 3000,citiesFlown: ["Bangalore", "Colombo", "Chennai", "Budapest", "London"]),
        Airline(name: "Lufthansa", profits:75.0,homebase: "London",numEmployees:1000,citiesFlown:["Rome", "Munich", "Johannesburg"]),
        Airline(name: "Air Canada", profits: 315.0, homebase: "Ottawa", numEmployees: 500,citiesFlown: ["Toronto", "Vancouver", "Tokyo"])
    ]
    
    // the idea is that we will keep airlines private, and access it using these methods
    
    // returns # of airlines
     func numAirlines()->Int {
        return airlines.count
    }
    
    // returns a particular airline
     func airlineNum(_ index:Int) -> Airline {
        return airlines[index]
    }
    
    subscript(index:Int) -> Airline{
        return airlines[index]
    }
    // adds a new airline to the mix
     mutating func addNewAirline(_ airline:Airline){
        airlines.append(airline)
    }
}
