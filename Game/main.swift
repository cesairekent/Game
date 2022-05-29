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
        var team01: [Character] = []
        var currentName: String = ""
        
        while let input = readLine() {
            guard input != "" else {
                break
            }

            if (team01.contains(where: {$0.name == input}))//(input)
            {
                //inputArray.append(input)
                currentName = input
                print("You entered: \(input)")
            } else {
                print("Negative. \"\(input)\" already exits")
            }

            print()
            print("Enter a word:")
        }

//        while(name.isEmpty){
//            print("Enter your character name")
//
//
//            var tempName = readLine()
//            if(tempName == nil){
//                print("Invalid Character name please retry")
//            }else{
//                name = tempName
//            }
//        }
        
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
                let char = Colossus(name: currentName)
                team01.append(char)
            }else{
                print("Invalid selection")
            }
        }
    }
    //Create team 02
    
    //Combat loop
    
    //End game
}




