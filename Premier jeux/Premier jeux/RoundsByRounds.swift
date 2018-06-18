//
//  RoundsByRounds.swift
//  Premier jeux
//
//  Created by ADMINISTRATEUR on 18/06/2018.
//  Copyright © 2018 Fabien Dietrich. All rights reserved.
//

import Foundation

func RoundAtkFuction () {
   // player1.listOfCharacter(1) chosis d' atk le readline de l'équipe d'en face
    print("Which ennemy want to atk with \(player1.listOfCharacter[1])?"
        + "\n1. \(player2.listOfCharacter[1])"
        + "\n2. \(player2.listOfCharacter[2])"
        + "\n3. \(player2.listOfCharacter[3])")//Error message : Thread 1: Fatal error: Index out of range
}
