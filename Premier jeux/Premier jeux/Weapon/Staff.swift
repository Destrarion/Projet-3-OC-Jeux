//
//  Staff.swift
//  Premier jeux
//
//  Created by ADMINISTRATEUR on 17/08/2018.
//  Copyright © 2018 Fabien Dietrich. All rights reserved.
//

import Foundation

class Staff : Weapon {
    static let listOfStaff : [Staff] = [staffOfTheHeaven]
    
    override init (stats : Int, name : String){
        super.init(stats: stats, name: name)
    }
    
}

var staffOfTheHeaven = Staff (stats: 10, name: "Staff of the Heaven")
