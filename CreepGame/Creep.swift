//
//  Creep.swift
//  CreepGame
//
//  Created by Christopher Boynton on 10/21/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

enum CreepType {
    case balanced
    case attack
    case tank
    case ranged
    case mage
}

class Creep: Attacking, Attackable, Moving {
    
    var name: String = ""
    var creepType: CreepType
    var rank: Int
    
    var healthPoints: Int = 0
    var armorPoints: Int = 0
    
    var damagePoints: Int = 0
    var range: CGFloat = 0
    var target: Attackable?
    
    var speed: CGFloat = 0
    
    init(creepType: CreepType, rank: Int) {
        self.creepType = creepType
        self.rank = rank
        
        switch creepType {
        case .balanced:
            switch rank {
            case 1:
                name = "Page"
                healthPoints = 40
                armorPoints = 10
                damagePoints = 10
                range = 0.5
                speed = 10
            default:
                print("Error: Creep Rank out of range in initializer")
                fatalError()
            }
        case .attack:
            switch rank {
            case 1:
                name = "Thug"
                healthPoints = 40
                armorPoints = 5
                damagePoints = 15
                range = 0.5
                speed = 12
            default:
                print("Error: Creep Rank out of range in initializer")
                fatalError()
            }
        case .tank:
            switch rank {
            case 1:
                name = "Knight"
                healthPoints = 50
                armorPoints = 20
                damagePoints = 5
                range = 0.5
                speed = 5
            default:
                print("Error: Creep Rank out of range in initializer")
                fatalError()
            }
        case .ranged:
            switch rank {
            case 1:
                name = "Slinger"
                healthPoints = 30
                armorPoints = 10
                damagePoints = 15
                range = 5
                speed = 15
            default:
                print("Error: Creep Rank out of range in initializer")
                fatalError()
            }
        case .mage:
            switch rank {
            case 1:
                name = "Acolite"
                healthPoints = 40
                armorPoints = 0
                damagePoints = 20
                range = 3
                speed = 10
            default:
                print("Error: Creep Rank out of range in initializer")
                fatalError()
            }
        }
    }
}
