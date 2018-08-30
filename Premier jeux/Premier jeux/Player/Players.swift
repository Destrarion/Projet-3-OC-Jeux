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
        let trimmeredCharacterName = characterName.trimmingCharacters(in: .whitespacesAndNewlines)
        if Player.namecheckavailaible.contains(trimmeredCharacterName.lowercased()){
            print("nom déjà utilisé")
            return false
        }else{
            Player.namecheckavailaible.append(trimmeredCharacterName.lowercased())
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
                let characterName = readLine()?.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
                if addMembres(characterName!){
                    let newCharacter = Fighter (name: characterName!)
                    listOfCharacter.append(newCharacter)
                     countCharacter += 1
                    print("You got \(listOfCharacter.count) character in your team, \(self.name)")
                }
               
                
            case "2":
                print("You have choosen the Mage to heal your rank ! How you want to name him ?")
                let characterName = readLine()?.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
                if addMembres(characterName!){
                    let newCharacter = Mage (name: characterName!)
                    listOfCharacter.append(newCharacter)
                     countCharacter += 1
                    print("You got \(listOfCharacter.count) character in your team, \(self.name)")
                }
                
                
            case "3":
                print("You have choosen the Dwarf in your rank to kill your ennemy ! How do you name him ?")
                let characterName = readLine()?.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
                if addMembres(characterName!){
                    let newCharacter = Dwarf (name: characterName!)
                    listOfCharacter.append(newCharacter)
                     countCharacter += 1
                    print("You got \(listOfCharacter.count) character in your team, \(self.name)")
                }
                
            case "4":
                print("You have choosen a Collosus to protect your rank ! How would you like to name him ?")
                let characterName = readLine()?.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
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
    
    func selectCharacter() -> Character{
        let selected = false
        print("Select character by is name")
        for character in listOfCharacter{
            print (character.name, ": Lifepoint: ", character.lifepoint,"Power :", character.strenghtAtk + character.weaponequiped.stats)
        }
        let choiceCharacter = readLine()
        let trimmed = choiceCharacter?.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        while !selected {
        let character = getcharacter(player: self, character: trimmed!)
            if let thereischaracter = character{
                return thereischaracter
            }
            else{
                print("there is no character named like you are written, reselect your selection")
                return selectCharacter()
            }
        }
        
    }
        func getcharacter (player : Player, character : String) -> Character?{
         var numberchecklist = 0
            for _ in player.listOfCharacter{
                if player.listOfCharacter[numberchecklist].name == character{
                    return player.listOfCharacter[numberchecklist]
                    
                }
            numberchecklist += 1
            }
            return nil
        }
    

}
