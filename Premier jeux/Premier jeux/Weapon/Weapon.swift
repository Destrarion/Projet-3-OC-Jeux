//
//  Weapon.swift
//  Premier jeux
//
//  Created by ADMINISTRATEUR on 13/08/2018.
//  Copyright © 2018 Fabien Dietrich. All rights reserved.
//

import Foundation
class Weapon {
    var name : String
    var stats : Int
    
    init (stats : Int, name :String ){
        self.stats = stats
        self.name = name
    }
}
var none = Weapon (stats: 0, name : "no weapon")



