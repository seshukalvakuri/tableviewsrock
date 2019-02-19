//
//  FirstViewController.swift
//  TableViews Rock
//
//  Created by Kalvakuri,Lakshmi Seshu on 2/19/19.
//  Copyright © 2019 northwest. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var cities = ["Paris", "London", "Adelaide", "New York", "Hyderabad"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return cities.count
        }
            else {
                return -1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "city")!
        cell.textLabel?.text = cities[indexPath.row]
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

