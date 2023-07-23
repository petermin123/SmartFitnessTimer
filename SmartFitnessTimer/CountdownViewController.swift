//
//  CountdownViewController.swift
//  SmartFitnessTimer
//
//  Created by Honggang Min on 7/22/23.
//

import UIKit

class CountdownViewController: UIViewController {
    
    @IBOutlet weak var remainingTimeLabel: UILabel!
    
    var secondsRemaining: Int = 0
    var totalSeconds: Int = 0
    var timer: Timer!
    
    @IBAction func startPressed(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func stopPressed(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func resetPressed(_ sender: Any) {
        timer.invalidate()
        secondsRemaining = totalSeconds
        remainingTimeLabel.text = "\(secondsRemaining)"
    }
    
    @objc func updateTimer() {
        if secondsRemaining > 0 {
            secondsRemaining -= 1
        } else {
            timer.invalidate()
        }
        remainingTimeLabel.text = "\(secondsRemaining)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        remainingTimeLabel.text = "\(secondsRemaining)"

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
