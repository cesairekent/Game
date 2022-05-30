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

            if (!team01.contains(where: {$0.name == input}))//(input)
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
        
        print("""
            Select your character class
            1. Colossus :
            2. Dwarf :
            3. Magus :
            4. Warrior :
            """)
        if let typeIndex = readLine()
        {
            switch (typeIndex) {
            case "1":
            team01.append(Colossus(name: currentName))
            case "2":
                team01.append(Dwarf(name: currentName))
            case "3":
                team01.append(Magus(name: currentName))
            case "4":
                team01.append(Warrior(name: currentName))
            default :
                print("Invalid selection")
            }
        }
    }
    //Create team 02
    
    //Combat loop
    
    //End game
}




