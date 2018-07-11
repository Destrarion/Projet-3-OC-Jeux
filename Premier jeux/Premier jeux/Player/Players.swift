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
                    print("You got \(listOfCharacter.count) character in your team, \(self.name)")
                }
               
                
            case "2":
                print("You have choosen the Mage to heal your rank ! How you want to name him ?")
                let characterName = readLine()
                if addMembres(characterName!){
                    let newCharacter = Mage (name: characterName!)
                    listOfCharacter.append(newCharacter)
                     countCharacter += 1
                    print("You got \(listOfCharacter.count) character in your team, \(self.name)")
                }
                
                
            case "3":
                print("You have choosen the Dwarf in your rank to kill your ennemy ! How do you name him ?")
                let characterName = readLine()
                if addMembres(characterName!){
                    let newCharacter = Dwarf (name: characterName!)
                    listOfCharacter.append(newCharacter)
                     countCharacter += 1
                    print("You got \(listOfCharacter.count) character in your team, \(self.name)")
                }
                
            case "4":
                print("You have choosen a Collosus to protect your rank ! How would you like to name him ?")
                let characterName = readLine()
                if addMembres(characterName!){
                    let newCharacter = Collosus (name: characterName!)
                    listOfCharacter.append(newCharacter)
                    countCharacter += 1
                    print("You got \(listOfCharacter.count) character in your team, \(self.name)")
                }
                
            default : print("You haven't selected character yet.")

                    }
            
            }
            
            }
            
            print("Your team is now ready for a fight !")
        }
    
    func atkChooseFunction(player : Player , ennemyPlayer : Player ) {
        var loopturnatk = 0
        while loopturnatk < 3 {
        print("\(player), your \(player.listOfCharacter[loopturnatk].name)is ready to attack ! Which ennemy want you to strike ?"
            + "\n1. \(ennemyPlayer.listOfCharacter[0].name)"
            + "\n1. \(ennemyPlayer.listOfCharacter[1].name)"
            + "\n1. \(ennemyPlayer.listOfCharacter[2].name)"
            )
        
        if let choiceDestinationAtk = readLine() {
        switch choiceDestinationAtk {
        case "1":
            player.listOfCharacter[loopturnatk].atkfunction(target: ennemyPlayer.listOfCharacter[0] , caster: player.listOfCharacter[loopturnatk])
            loopturnatk += 1
        case "2":
            player.listOfCharacter[loopturnatk].atkfunction(target: ennemyPlayer.listOfCharacter[1] , caster: player.listOfCharacter[loopturnatk])
            loopturnatk += 1
        case "3":
            player.listOfCharacter[loopturnatk].atkfunction(target: ennemyPlayer.listOfCharacter[2] , caster: player.listOfCharacter[loopturnatk])
            loopturnatk += 1
        
        default : print ("vous n'avez pas choisis de cible à attaquer")
        
        }
        
        }
        
        
        }
        
    }
}
