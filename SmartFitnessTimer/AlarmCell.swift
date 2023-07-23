//
//  AlarmCell.swift
//  SmartFitnessTimer
//
//  Created by Honggang Min on 7/18/23.
//

import UIKit

class AlarmCell: UITableViewCell {
    @IBOutlet weak var minuteLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
        
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
