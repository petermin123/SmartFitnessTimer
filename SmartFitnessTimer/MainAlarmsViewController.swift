//
//  ViewController.swift
//  SmartFitnessTimer
//
//  Created by Honggang Min on 5/16/23.
//

import UIKit

class MainAlarmsViewController: UITableViewController {
    
    let itemArray = ["1", "2", "3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationItem.hidesBackButton = true
    }

    @IBAction func addNewAlarmButton(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "createNewAlarm", sender: self)
    }
    
    //MARK: TableView DataSource Methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItem", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }

}

