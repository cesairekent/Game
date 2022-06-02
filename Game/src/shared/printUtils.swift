//
//  printUtils.swift
//  Game
//
//  Created by MiniTitan on 30/05/2022.
//

import Foundation

class PrintUtils
{
    static func printClassSelection()
    {
        print()
        print("""
            Select your character class
            1. Colossus :
            2. Dwarf :
            3. Magus :
            4. Warrior :
            """
        )
    }
    
    static func printCharacterTeam(team: [Character])
    {
        print()
        for characterIndex in 1...team.count
        {
            print("\(characterIndex). \(team[characterIndex].name)")
        }
    }
    
    static func printAction(){
        print()
        print(
            """
            1. Attack
            2. Heal
            """
        )
    }
}
