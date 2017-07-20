//
//  Constants.swift
//  OSRS Helper Tool
//
//  Created by John Ingwersen on 7/4/17.
//  Copyright © 2017 Personal. All rights reserved.
//

import Foundation
import UIKit

class Constants {
    //All 23 skills in game.
    static let skills = ["Agility", "Attack", "Construction", "Cooking", "Crafting", "Defence", "Farming", "Firemaking", "Fishing", "Fletching", "Herblore", "Hitpoints", "Hunter", "Magic", "Mining", "Prayer", "Ranged", "Runecrafting", "Slayer", "Smithing", "Strength", "Thieving", "Woodcutting"]
    static let imageSkills: [UIImage] = [UIImage(named: "Agility-icon")!,UIImage(named: "Attack-icon")!,UIImage(named: "Construction-icon")!,UIImage(named: "Cooking-icon")!,UIImage(named: "Crafting-icon")!,UIImage(named: "Defence-icon")!,UIImage(named: "Farming-icon")!,UIImage(named: "Firemaking-icon")!,UIImage(named: "Fishing-icon")!,UIImage(named: "Fletching-icon")!,UIImage(named: "Herblore-icon")!,UIImage(named: "Hitpoints-icon")!,UIImage(named: "Hunter-icon")!,UIImage(named: "Magic-icon")!,UIImage(named: "Mining-icon")!,UIImage(named: "Prayer-icon")!,UIImage(named: "Ranged-icon")!,UIImage(named: "Runecrafting-icon")!,UIImage(named: "Slayer-icon")!,UIImage(named: "Smithing-icon")!,UIImage(named: "Strength-icon")!,UIImage(named: "Thieving-icon")!,UIImage(named: "Woodcutting-icon")!]

    static let levelXP = [0, 83, 174, 276, 388, 512, 650, 801, 969, 1154, 1358, 1584, 1833, 2107, 2411, 2746, 3115, 3523, 3973, 4470, 5018, 5624, 6291, 7028, 7842, 8740, 9730, 10824, 12031, 13363, 14833, 16456, 18247, 20224, 22406, 24815, 27473, 30408, 33648, 37224, 41171, 45529, 50339, 55649, 61512, 67983, 75127, 83014, 91721, 101333, 111945, 123660, 136594, 150872, 166636, 184040, 203254, 224466, 247886, 273742, 302288, 333804, 368599, 407015, 449428, 496254, 547953, 605032, 668051, 737627, 814445, 899257, 992895, 1096278, 1210421, 1336443, 1475581, 1629200, 1789808, 1986068, 2192818, 2421087, 2673114, 2951373, 3258594, 3597792, 3972294, 4385776, 4842295, 5346332, 5902831, 6517253, 7195629, 7944614, 8771558, 9684577, 10692629, 11805606, 13034431]
    
    //List of all methods for each skill
    static let methods: [String: [String]] = ["Agility": Constants.agilityMethods, "Cooking" : Constants.cookingMethods, "Construction" : Constants.constructionMethods]
    //Individual skills with xp value following name
    static let constructionMethods: [String] = ["Planks", "29", "Oak Planks", "60", "Mahogany Logs", "140", "Teak Logs", "90"]
    static let agilityMethods: [String] = ["Draynor", "120", "Al Kharid", "180", "Varrock", "238", "Canifis", "240", "Falador", "440", "Seers", "570", "Pollnivneach", "890", "Rellekka", "780", "Ardougne", "793"] // Only contains rooftop courses
    static let cookingMethods: [String] = ["Beef/Chicket/Rabbit", "30", "Shrimp/Anchovie", "30", "Sardine", "40", "Karambwan(Poison)", "80", "Herring", "50", "Mackerel", "60", "Trout", "70", "Cod", "75", "Pike", "80", "Salmon", "90", "Tuna", "100", "Karambwan(Cooked)", "190", "Wine", "200", "Lobster", "120", "Bass", "130", "Swordfish", "140", "Monkfish", "150", "Shark", "210", "Sea Turtle", "211.3", "Anglerfish", "230", "Dark Crab", "215", "Manta Ray", "216.2"]
}
