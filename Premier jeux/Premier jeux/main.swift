//
//  main.swift
//  Premier jeux
//
//  Created by ADMINISTRATEUR on 06/06/2018.
//  Copyright © 2018 Fabien Dietrich. All rights reserved.
//

import Foundation

var jeux = Game()

print("Hello world!")

jeux.teamCreation()
jeux.teamCreation()
jeux.attack(player: jeux.listOfPlayer[0], ennemyPlayer: jeux.listOfPlayer[1])

