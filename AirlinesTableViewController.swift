//
//  AirlinesTableViewController.swift
//  AIrlines
//
//  Created by Sherpa,Lhakpa S on 10/8/18.
//  Copyright © 2018 Sherpa,Lhakpa S. All rights reserved.
//

import UIKit
class AirlinesTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    @IBAction func addNewAirline(segue:UIStoryboardSegue){
//        let airline = (name)
    }
    

    override func numberOfSections(in tableView: UITableView) -> Int {
      
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return FAA.faa.numAirlines()
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "airline_cell", for: indexPath)

        let airline = FAA.faa[indexPath.row]
        cell.textLabel?.text = airline.name
        cell.detailTextLabel?.text = airline.homebase
        
        // Configure the cell...

        return cell
    }
 

   
//    @IBAction func

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "cities_flown"{
            let citiesFlownVC = segue.destination as! CitiesFlownTableViewController
            citiesFlownVC.airline = FAA.faa[tableView.indexPathForSelectedRow!.row]
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.l
        
    
    else{
        }
        
  
        
    }
 

}
