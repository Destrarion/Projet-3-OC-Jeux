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
    print("Which ennemy want to atk with \(player1.listOfCharacter[0])?"
        + "\n1. \(player2.listOfCharacter[0].name)"
        + "\n2. \(player2.listOfCharacter[1].name)"
        + "\n3. \(player2.listOfCharacter[2].name)")
    
    if let choiceAtk = readLine(){
        switch choiceAtk {
        case "1" : player1.listOfCharacter[0].atkfunction(target: player2.listOfCharacter[0], caster: player1.listOfCharacter[0])
        print("\(player2.listOfCharacter[0].name) as taken \(player1.listOfCharacter[0].strenghtAtk) and now" + "\(player2.listOfCharacter[0].name) got \(player2.listOfCharacter[0].lifepoint)lifepoint.")
            
        case "2" : player1.listOfCharacter[0].atkfunction(target: player2.listOfCharacter[1], caster: player1.listOfCharacter[0])
        print("\(player2.listOfCharacter[1].name) as taken \(player1.listOfCharacter[0].strenghtAtk) and now" + "\(player2.listOfCharacter[1].name) got \(player2.listOfCharacter[1].lifepoint)lifepoint.")
            
        case "3" : player1.listOfCharacter[0].atkfunction(target: player2.listOfCharacter[2], caster: player1.listOfCharacter[0])
        print("\(player2.listOfCharacter[2].name) as taken \(player1.listOfCharacter[0].strenghtAtk) and now" + "\(player2.listOfCharacter[2].name) got \(player2.listOfCharacter[2].lifepoint)lifepoint.")
            
        default:
            print("You haven't choose someone to attack. You must atk one of your ennemy with")
            RoundAtkFuction()
        }
    }
    // here the N°2 of the list
    print("Which ennemy want to atk with \(player1.listOfCharacter[1])?"
        + "\n1. \(player2.listOfCharacter[0].name)"
        + "\n2. \(player2.listOfCharacter[1].name)"
        + "\n3. \(player2.listOfCharacter[2].name)")
    
    if let choiceAtk = readLine(){
        switch choiceAtk {
        case "1" : player1.listOfCharacter[1].atkfunction(target: player2.listOfCharacter[0], caster: player1.listOfCharacter[1])
        print("\(player2.listOfCharacter[0].name) as taken \(player1.listOfCharacter[1].strenghtAtk) and now" + "\(player2.listOfCharacter[0].name) got \(player2.listOfCharacter[0].lifepoint)lifepoint.")
            
        case "2" : player1.listOfCharacter[1].atkfunction(target: player2.listOfCharacter[1], caster: player1.listOfCharacter[1])
        print("\(player2.listOfCharacter[1].name) as taken \(player1.listOfCharacter[1].strenghtAtk) and now" + "\(player2.listOfCharacter[1].name) got \(player2.listOfCharacter[1].lifepoint)lifepoint.")
            
        case "3" : player1.listOfCharacter[1].atkfunction(target: player2.listOfCharacter[2], caster: player1.listOfCharacter[1])
        print("\(player2.listOfCharacter[2].name) as taken \(player1.listOfCharacter[1].strenghtAtk) and now" + "\(player2.listOfCharacter[2].name) got \(player2.listOfCharacter[2].lifepoint)lifepoint.")
            
        default:
            print("You haven't choose someone to attack. You must atk one of your ennemy with")
            RoundAtkFuction()
        }
    }
    // And the 3rd
    print("Which ennemy want to atk with \(player1.listOfCharacter[2])?"
        + "\n1. \(player2.listOfCharacter[0].name)"
        + "\n2. \(player2.listOfCharacter[1].name)"
        + "\n3. \(player2.listOfCharacter[2].name)")
    
    if let choiceAtk = readLine(){
        switch choiceAtk {
        case "1" : player1.listOfCharacter[2].atkfunction(target: player2.listOfCharacter[0], caster: player1.listOfCharacter[2])
        print("\(player2.listOfCharacter[0].name) as taken \(player1.listOfCharacter[2].strenghtAtk) and now" + "\(player2.listOfCharacter[0].name) got \(player2.listOfCharacter[0].lifepoint)lifepoint.")
            
        case "2" : player1.listOfCharacter[2].atkfunction(target: player2.listOfCharacter[1], caster: player1.listOfCharacter[2])
        print("\(player2.listOfCharacter[1].name) as taken \(player1.listOfCharacter[0].strenghtAtk) and now" + "\(player2.listOfCharacter[1].name) got \(player2.listOfCharacter[1].lifepoint)lifepoint.")
            
        case "3" : player1.listOfCharacter[2].atkfunction(target: player2.listOfCharacter[2], caster: player1.listOfCharacter[2])
        print("\(player2.listOfCharacter[2].name) as taken \(player1.listOfCharacter[2].strenghtAtk) and now" + "\(player2.listOfCharacter[2].name) got \(player2.listOfCharacter[2].lifepoint)lifepoint.")
            
        default:
            print("You haven't choose someone to attack. You must atk one of your ennemy with")
            RoundAtkFuction()
        }
    }
}




