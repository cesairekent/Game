//
//  characterCreation.swift
//  Game
//
//  Created by MiniTitan on 30/05/2022.
//

import Foundation
//import Rainbow

class GameManager
{
    var teamCount: Int = 3
    var teams: [String: [Character]] = [:]
    
    init(){
        teams = ["team01":[], "team02":[]]
        //team01 = []
        //team02 = []
        
        for _ in 1...6{
            createCharacter()
        }
    }
    
    //Create team 01
    func createCharacter()
    {
        var currentName: String = ""
        
        print()
        print("Enter your character name:")
        
        while let name = readLine()
        {
            if(String(name).isEmpty)
            {
                print(Colors.red+"Error! Please enter valid name")
            }else{
                if ((teams["team01"]!).contains(where: {$0.name == name}) && teams["team02"]!.contains(where: {$0.name == name})) //.contains(where: {$0.name == name})??false)
                {
                    currentName = name
                    print("You entered: \(name)")
                    break
                } else {
                    print("Error! \"\(name)\" already exits")
                }
            }
            //print()
            //print("Enter your character name:")
        }
        
        PrintUtils.printClassSelection()
        while let typeIndex = readLine()
        {
            if(Int(typeIndex) != nil)
            {
                if(typeIndex == "1"){
                    teams["team01"]!.count == teamCount ? teams["team02"]!.append(Colossus(name: currentName)) : teams["team01"]!.append(Colossus(name: currentName))
                    break
                }else if(typeIndex == "2"){
                    teams["team01"]!.count == teamCount ? teams["team02"]!.append(Dwarf(name: currentName)) : teams["team01"]!.append(Dwarf(name: currentName))
                    break
                }else if(typeIndex == "3"){
                    teams["team01"]!.count == teamCount ? teams["team02"]!.append(Magus(name: currentName)) : teams["team01"]!.append(Magus(name: currentName))
                    break
                }else if(typeIndex == "4"){
                    teams["team01"]!.count == teamCount ? teams["team02"]!.append(Warrior(name: currentName)) : teams["team01"]!.append(Warrior(name: currentName))
                    break
                }else{
                    print()
                    print("Invalid selection")
                    PrintUtils.printClassSelection()
                }
            }else{
                print("Invalid selection, please select valid number in character class")
                print()
            }
        }
        
        print(teams)
    }
    
    //Create team 02
    
    //Combat loop
    
    //End game
}
