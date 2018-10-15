//
//  ViewController.swift
//  AIrlines
//
//  Created by Sherpa,Lhakpa S on 10/8/18.
//  Copyright © 2018 Sherpa,Lhakpa S. All rights reserved.
//

import UIKit

class AddNewAirlineViewController: UIViewController {
    
    @IBOutlet weak var nameTF: UITextField!
    
    @IBOutlet weak var hamebaseTF: UITextField!
    
    @IBOutlet weak var citiesflownTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let airlineToAdd = Airline(name: nameTF.text!, profits: 0.0, homebase: hamebaseTF.text!, numEmployees: 0, citiesFlown: [])
        FAA.faa.addNewAirline(airlineToAdd)
    }

}

