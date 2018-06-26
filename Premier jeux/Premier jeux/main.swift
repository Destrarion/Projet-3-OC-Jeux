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


var player1 = Player()


player1.addNamePlayer()
player1.pickingCharacter()

var player2 = Player()

player2.addNamePlayer()
player2.pickingCharacter()

print(player2.listOfCharacter)


player1.listOfCharacter[0].atkfunction(target: player2.listOfCharacter[0], caster: player1.listOfCharacter[0])
print(player2.listOfCharacter[0].lifepoint)

RoundAtkFuctionCharacter1()
RoundAtkFuctionCharacter2()
RoundAtkFuctionCharacter3()
