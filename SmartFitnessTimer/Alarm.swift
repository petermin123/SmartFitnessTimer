//
//  Alarm.swift
//  SmartFitnessTimer
//
//  Created by Honggang Min on 7/19/23.
//

import Foundation
import RealmSwift

class Alarm: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var minute: Int = 0
    @objc dynamic var second: Int = 0
}
