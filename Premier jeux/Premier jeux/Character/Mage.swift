//
//  Mage.swift
//  Premier jeux
//
//  Created by ADMINISTRATEUR on 07/06/2018.
//  Copyright © 2018 Fabien Dietrich. All rights reserved.
//

import Foundation

class Mage : Character{
    override init(name : String, lifepoint : Int, strenghtAtk : Int) {
        
        super.init(name: name, lifepoint: lifepoint, strenghtAtk: strenghtAtk)
    }
    convenience init (name : String) {
        self.init(name : name ,lifepoint: 85, strenghtAtk: 15 )
    }
    override func atkfunction(target: Character, caster: Character) {
        target.lifepoint += caster.strenghtAtk
    }
}