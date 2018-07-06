//
//  Players.swift
//  Premier jeux
//
//  Created by ADMINISTRATEUR on 07/06/2018.
//  Copyright © 2018 Fabien Dietrich. All rights reserved.
//

import Foundation

public class Player {
    var name : String = ""
    var listOfCharacter : [Character] = []
    static var namecheckavailaible : [String] = []
    
    
    func addNamePlayer () {
        print("Hello new player. Select your name")
        if let namePlayer = readLine(){
            name += namePlayer
            print("Welcome \(name).")
        }
        
    }
    
    func addMembres ( _ characterName : String) -> Bool {
        if Player.namecheckavailaible.contains(characterName.lowercased()){
            print("nom déjà utilisé")
            return false
        }else{
            Player.namecheckavailaible.append(characterName.lowercased())
            print(Player.namecheckavailaible)
            
            
            return true
        }
    }
    
    
    func pickingCharacter(){
        // Menu for choosing Character
        print("Which character you want to choose in your rank, \(self.name) ?"
        + "\n1. A Fighter"
        + "\n2. A Mage"
        + "\n3. A Dwarf"
        + "\n4. A Collosus")
            
        // loop for choosing 3 of character
            // add while instead
        var countCharacter = 0
        while countCharacter < 3{
            if let choice = readLine(){
            switch choice {
                
            case "1":
                print("You have choosen the Fighter to fight in your rank ! How do you name him ?")
                let characterName = readLine()
                if addMembres(characterName!){
                    let newCharacter = Fighter (name: characterName!)
                    listOfCharacter.append(newCharacter)
                     countCharacter += 1
                }
               
                
            case "2":
                print("You have choosen the Mage to heal your rank ! How you want to name him ?")
                let characterName = readLine()
                if addMembres(characterName!){
                    let newCharacter = Mage (name: characterName!)
                    listOfCharacter.append(newCharacter)
                     countCharacter += 1
                }
                
                
            case "3":
                print("You have choosen the Dwarf in your rank to kill your ennemy ! How do you name him ?")
                let characterName = readLine()
                if addMembres(characterName!){
                    let newCharacter = Dwarf (name: characterName!)
                    listOfCharacter.append(newCharacter)
                     countCharacter += 1
                }
                
            case "4":
                print("You have choosen a Collosus to protect your rank ! How would you like to name him ?")
                let characterName = readLine()
                if addMembres(characterName!){
                    let newCharacter = Collosus (name: characterName!)
                    listOfCharacter.append(newCharacter)
                    countCharacter += 1
                }
                
            default : print("You haven't selected character yet.")

                    }
            
                }
            print("You got \(listOfCharacter.count) character in your team, \(self.name)")
            
            }
            print("Your team is now ready for a fight !")
        }

    
    }

