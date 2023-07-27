//
//  ViewController.swift
//  SmartFitnessTimer
//
//  Created by Honggang Min on 5/16/23.
//

import UIKit

class MainTimersViewController: UITableViewController {
    
    var itemArray = [CountdownTimer]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.register(UINib(nibName: "TimerCell", bundle: nil), forCellReuseIdentifier: "Countdown")
        
        let newAlarm = CountdownTimer()
        newAlarm.title = "Chest"
        newAlarm.minute = 1
        newAlarm.second = 15
        
        let newAlarm2 = CountdownTimer()
        newAlarm2.title = "Leg"
        newAlarm2.minute = 3
        newAlarm2.second = 0
        
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "Countdown", for: indexPath) as! TimerCell
        cell.minuteLabel?.text = itemArray[indexPath.row].title
        cell.secondLabel?.text = "\(itemArray[indexPath.row].minute)m \(itemArray[indexPath.row].second)s"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showCountdown", sender: self)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? CountdownViewController {
            if let indexPath = tableView.indexPathForSelectedRow {
                let countdownLength = itemArray[indexPath.row].minute * 60 + itemArray[indexPath.row].second
                destinationVC.secondsRemaining = countdownLength
                destinationVC.totalSeconds = countdownLength
            }
        } else if let _ = segue.destination as? NewTimerViewController {
        }
        
    }
    
    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue) {
        if let sourceVC = unwindSegue.source as? NewTimerViewController {
            let selectedCountdown = CountdownTimer()
            selectedCountdown.title = sourceVC.selectedAlarmName
            selectedCountdown.minute = sourceVC.selectedMinute
            selectedCountdown.second = sourceVC.selectedSecond
            itemArray.append(selectedCountdown)
            tableView.reloadData()
        }
    }
    
    

}

