//
//  ViewController.swift
//  SmartFitnessTimer
//
//  Created by Honggang Min on 5/16/23.
//

import UIKit

class MainAlarmsViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func addNewAlarmButton(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "createNewAlarm", sender: self)
    }

}

