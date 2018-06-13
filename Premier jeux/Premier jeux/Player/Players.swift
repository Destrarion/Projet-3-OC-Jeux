//
//  Players.swift
//  Premier jeux
//
//  Created by ADMINISTRATEUR on 07/06/2018.
//  Copyright © 2018 Fabien Dietrich. All rights reserved.
//

import Foundation

class Player {
    var name : String = ""
    var listOfCharacter : [Character]
    
    init (name : String, listOfCharacter: [Character]){
        self.name = name
        self.listOfCharacter = listOfCharacter
    }
    convenience init (listOfCharacter: [Character]){
        self.init(name: "",listOfCharacter : listOfCharacter)
    }
    func StartingTeam () {
        print("Hello new player. Select your name")
        if let namePlayer = readLine(){
            name += namePlayer
            print("Welcome \(name).")
    }
        
        func PickingCharacter(){
            // Menu for choosing Character
            print("Which character you want to choose in your rank, \(self.name) ?"
            + "\n1. A Fighter"
            + "\n2. A Mage"
            + "\n3. A Dwarf"
            + "\n4. A Collosus")
            
            // loop for choosing 3 of character
            var countloop : Int = 0
            for countloop in 0..<3 {
                if let choice = readLine(){
                switch choice {
                case "1":
                    print("You have choosen the Fighter to fight in your rank ! How do you name him ?")
                    let characterName = readLine()
                    var newCharacter = Fighter (name : characterName!)
                    listOfCharacter.append(newCharacter)
                case "2":
                    print("You have choosen the Mage to heal your rank ! How you want to name him ?")
                    
                case "3":
                    print("You have choosen the Dwarf in your rank to kill your ennemy ! How do you name him ?")
                    
                case "4":
                    print("You have choosen a Collosus to protect your rank ! How would you like to name him ?")
                    
                default : print("Vous n'avez pas choisis de personnage.")
                    }
            countloop += 1
                }
            }
        }
    }
}
