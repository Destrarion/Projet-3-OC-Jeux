//
//  main.swift
//  Premier jeux
//
//  Created by ADMINISTRATEUR on 06/06/2018.
//  Copyright © 2018 Fabien Dietrich. All rights reserved.
//

import Foundation

var player1 = Player()
var player2 = Player()

player1.addNamePlayer()
player1.pickingCharacter()
print(player1.listOfCharacter)
player2.addNamePlayer()
player2.pickingCharacter()
player1.atkChooseFunction(player: player1, ennemyPlayer: player2)
print(player2.listOfCharacter[0].lifepoint)

