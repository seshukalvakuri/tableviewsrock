//
//  SecondViewController.swift
//  TableViews Rock
//
//  Created by Kalvakuri,Lakshmi Seshu on 2/19/19.
//  Copyright © 2019 northwest. All rights reserved.
//

import UIKit

class TouristSitesViewController: UIViewController,  UITableViewDataSource, UITableViewDelegate {
    var touristsites = ["Eiffle Tower", "Tower of London", "Statue of Liberty", "Leaning tower of pisa", "Taj Mahal"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return touristsites.count
        }
        else {
            return -1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "touristsites")!
        cell.textLabel?.text = touristsites[indexPath.row]
        
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

