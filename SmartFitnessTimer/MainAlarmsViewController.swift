//
//  ViewController.swift
//  SmartFitnessTimer
//
//  Created by Honggang Min on 5/16/23.
//

import UIKit

class MainAlarmsViewController: UITableViewController {
    
    var itemArray = [Alarm]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.register(UINib(nibName: "AlarmCell", bundle: nil), forCellReuseIdentifier: "ToDoItem")
        
        let newAlarm = Alarm()
        newAlarm.title = "Chest"
        newAlarm.minute = "1"
        newAlarm.second = "15"
        
        let newAlarm2 = Alarm()
        newAlarm2.title = "Leg"
        newAlarm2.minute = "3"
        newAlarm2.second = "0"
        
        itemArray.append(newAlarm)
        itemArray.append(newAlarm2)
        
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItem", for: indexPath) as! AlarmCell
        cell.minuteLabel?.text = itemArray[indexPath.row].title
        cell.secondLabel?.text = itemArray[indexPath.row].minute + "m " + itemArray[indexPath.row].second + "s"
        return cell
    }

}

