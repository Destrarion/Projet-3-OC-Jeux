//
//  main.swift
//  Premier jeux
//
//  Created by ADMINISTRATEUR on 06/06/2018.
//  Copyright © 2018 Fabien Dietrich. All rights reserved.
//

import Foundation


var gimly = Dwarf (name : "Gimly")

var balrogue = Collosus (name : "Balrogue")

gimly.atkfunction(target: balrogue, caster: gimly)

print("\(balrogue.lifepoint) ")


