//
//  Sword.swift
//  Premier jeux
//
//  Created by ADMINISTRATEUR on 17/08/2018.
//  Copyright © 2018 Fabien Dietrich. All rights reserved.
//

import Foundation

class Sword : Weapon {
    override init (stats : Int, name : String){
        super.init(stats: stats, name: name)
    }
    
}

var swordOfThunder = Sword (stats: 7, name: "Sword of thunder")
