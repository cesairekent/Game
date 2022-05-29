//
//  main.swift
//  Game
//
//  Created by MiniTitan on 23/05/2022.
//

import Foundation 

class Game
{
    //Create team 01
    func createCharacter()
    {
        var name: String
        
//        while let input = readLine() {
//            guard input != "quit" else {
//                break
//            }
//
//            if !inputArray.contains(input) {
//                inputArray.append(input)
//                print("You entered: \(input)")
//            } else {
//                print("Negative. \"\(input)\" already exits")
//            }
//
//            print()
//            print("Enter a word:")
//        }

        
        while(name.isEmpty){
            print("Enter your character name")
            
            
            var tempName = readLine()
            if(tempName == nil){
                print("Invalid Character name please retry")
            }else{
                name = tempName
            }
        }
        print("""
            Select your character class
            1. Colossus :
            2. Dwarf :
            3. Magus :
            4. Warrior :
            """)
        if let typeIndex = readLine()
        {
            if(typeIndex == "1"){
                var char = Colossus(name: name)
            }else{
                print("Invalid selection")
            }
        }
    }
    //Create team 02
    
    //Combat loop
    
    //End game
}




