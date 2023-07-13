//
//  ViewController.swift
//  SmartFitnessTimer
//
//  Created by Honggang Min on 5/16/23.
//

import UIKit

class NewAlarmViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        alarmPicker.delegate = self
        alarmPicker.dataSource = self
    }
    
    let pickerData: [[Int]] = [
        [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
         21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
         41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59],
        [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
         21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
         41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59],
    ]
    
    @IBOutlet weak var alarmPicker: UIPickerView!
    @IBOutlet weak var alarmName: UITextField!
    var selectedMinute: Int = 0
    var selectedSecond: Int = 0
    var selectedAlarmName: String = ""
    
    //MARK: PickerView DataSource and Delegate Methods
    // Desired number of columns of pickers
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    // Desired number of rows in each component
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData[component].count
    }
    
    // Captures the picker view selection
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedMinute = pickerView.selectedRow(inComponent: 0)
        selectedSecond = pickerView.selectedRow(inComponent: 1)
        selectedAlarmName = alarmName.text!
    }
    
    // Displays the data passed in as the title for the picker view
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(pickerData[component][row])
    }

}
