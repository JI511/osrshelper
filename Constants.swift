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
    
    static let imageSkills: [String:UIImage] = ["Agility":UIImage(named: "Agility-icon")!,"Attack":UIImage(named: "Attack-icon")!,"Construction":UIImage(named: "Construction-icon")!,"Cooking":UIImage(named: "Cooking-icon")!,"Crafting":UIImage(named: "Crafting-icon")!,"Defence":UIImage(named: "Defence-icon")!,"Farming":UIImage(named: "Farming-icon")!,"Firemaking":UIImage(named: "Firemaking-icon")!,"Fishing":UIImage(named: "Fishing-icon")!,"Fletching":UIImage(named: "Fletching-icon")!,"Herblore":UIImage(named: "Herblore-icon")!,"Hitpoints":UIImage(named: "Hitpoints-icon")!,"Hunter":UIImage(named: "Hunter-icon")!,"Magic":UIImage(named: "Magic-icon")!,"Mining":UIImage(named: "Mining-icon")!,"Prayer":UIImage(named: "Prayer-icon")!,"Ranged":UIImage(named: "Ranged-icon")!,"Runecrafting":UIImage(named: "Runecrafting-icon")!,"Slayer":UIImage(named: "Slayer-icon")!,"Smithing":UIImage(named: "Smithing-icon")!,"Strength":UIImage(named: "Strength-icon")!,"Thieving":UIImage(named: "Thieving-icon")!,"Woodcutting":UIImage(named: "Woodcutting-icon")!]
    
    static let buyableSkills = ["Construction", "Cooking", "Crafting", "Farming", "Firemaking", "Fletching", "Herblore", "Prayer", "Smithing"]
    static let gatheringSkills = ["Fishing", "Hunter", "Mining", "Runecrafting", "Woodcutting"]
    static let combatSkills = ["Attack", "Strength", "Defence", "Magic", "Ranged", "Hitpoints"]
    static let supportSkills = ["Agility", "Slayer", "Thieving"]
    
    static let levelXP = [0, 83, 174, 276, 388, 512, 650, 801, 969, 1154, 1358, 1584, 1833, 2107, 2411, 2746, 3115, 3523, 3973, 4470, 5018, 5624, 6291, 7028, 7842, 8740, 9730, 10824, 12031, 13363, 14833, 16456, 18247, 20224, 22406, 24815, 27473, 30408, 33648, 37224, 41171, 45529, 50339, 55649, 61512, 67983, 75127, 83014, 91721, 101333, 111945, 123660, 136594, 150872, 166636, 184040, 203254, 224466, 247886, 273742, 302288, 333804, 368599, 407015, 449428, 496254, 547953, 605032, 668051, 737627, 814445, 899257, 992895, 1096278, 1210421, 1336443, 1475581, 1629200, 1789808, 1986068, 2192818, 2421087, 2673114, 2951373, 3258594, 3597792, 3972294, 4385776, 4842295, 5346332, 5902831, 6517253, 7195629, 7944614, 8771558, 9684577, 10692629, 11805606, 13034431]
    
    //List of all methods for each skill
    static let methods: [String: [String]] = ["Agility": Constants.agilityMethods, "Cooking" : Constants.cookingMethods, "Construction" : Constants.constructionMethods, "Crafting":Constants.craftingMethods, "Farming":Constants.farmingMethods, "Firemaking":Constants.firemakingMethods]
    
    //Individual skills with xp value following name
    static let constructionMethods: [String] = ["Planks", "29", "Oak Planks", "60", "Mahogany Logs", "140", "Teak Logs", "90"]
    static let agilityMethods: [String] = ["Draynor", "120", "Al Kharid", "180", "Varrock", "238", "Canifis", "240", "Falador", "440", "Seers", "570", "Pollnivneach", "890", "Rellekka", "780", "Ardougne", "793"] // Only contains rooftop courses
    static let cookingMethods: [String] = ["Beef/Chicket/Rabbit", "30", "Shrimp/Anchovie", "30", "Sardine", "40", "Karambwan(Poison)", "80", "Herring", "50", "Mackerel", "60", "Trout", "70", "Cod", "75", "Pike", "80", "Salmon", "90", "Tuna", "100", "Karambwan(Cooked)", "190", "Wine", "200", "Lobster", "120", "Bass", "130", "Swordfish", "140", "Monkfish", "150", "Shark", "210", "Sea Turtle", "211.3", "Anglerfish", "230", "Dark Crab", "215", "Manta Ray", "216.2"]
    static let craftingMethods: [String] = ["Bow String", "15", "Green D'hide", "62", "Blue D'hide", "70", "Red D'hide", "78", "Black D'hide", "86", "Unpowered Orb", "52.5", "Lantern Lens", "55", "Dorg Light Orb", "70", "Sapphire", "50", "Emerald", "67.5", "Ruby", "85", "Diamond", "107.5", "Dragonstone", "137.5", "Water Battlestaff", "100", "Earth Battlestaff", "112.5", "Fire Battlestaff", "125", "Air Battlestaff", "137.5"]
    static let farmingMethods: [String] = ["Apple Tree", "1272.5", "Banana Tree", "1841.5", "Orange Tree", "2586.7", "Curry Tree", "3036.9", "Pineapple Bush", "4791.7", "Papaya Tree", "6380.4", "Palm Tree", "10509.6", "Acorn", "481.3", "Willow Tree", "1481.5", "Maple Tree", "3448.4", "Yew Tree", "7150.9", "Magic Tree", "13913.8", "Calquat Tree", "12516.5"]
    static let firemakingMethods: [String] = ["Normal", "40", "Oak", "60", "Willow", "90", "Teak", "105", "Maple", "135", "Mahogany", "157.5", "Yew", "202.5", "Magic", "303.8", "Redwood", "350"]
    
    //Colors
    static let skillPrimaryColors: [String : UIColor] = ["Agility":UIColor.blue, "Attack":UIColor.red, "Construction":Constants.tan, "Cooking":UIColor.purple, "Crafting":UIColor.brown, "Defence":Constants.lightBlue, "Farming":UIColor.green, "Firemaking":UIColor.orange, "Fishing":Constants.lightBlue, "Fletching":Constants.teal, "Herblore":UIColor.green, "Hitpoints":UIColor.white, "Hunter":Constants.tan, "Magic":UIColor.white, "Mining":UIColor.gray, "Prayer":UIColor.white, "Ranged":UIColor.green, "Runecrafting":UIColor.white, "Slayer":UIColor.black, "Smithing":UIColor.gray, "Strength":UIColor.green, "Thieving":UIColor.purple, "Woodcutting":Constants.tan]
    
    static let skillSecondaryColors: [String:UIColor] = ["Agility":UIColor.red, "Attack":UIColor.yellow, "Construction":UIColor.yellow, "Cooking":UIColor.red, "Crafting":UIColor.yellow, "Defence":UIColor.white, "Farming":Constants.lightGreen, "Firemaking":UIColor.yellow, "Fishing":UIColor.yellow, "Fletching":UIColor.yellow, "Herblore":UIColor.yellow, "Hitpoints":UIColor.red, "Hunter":UIColor.brown, "Magic":UIColor.blue, "Mining":Constants.lightBlue, "Prayer":UIColor.yellow, "Ranged":UIColor.red, "Runecrafting":UIColor.yellow, "Slayer":UIColor.red, "Smithing":UIColor.black, "Strength":UIColor.green, "Thieving":UIColor.black, "Woodcutting":UIColor.green]
    
    static let lightBlue = UIColor.init(red: 66/255, green: 235/255, blue: 244/255, alpha: 1.0)
    static let teal = UIColor.init(red: 0.0, green: 102/255, blue: 102/255, alpha: 1.0)
    static let tan = UIColor.init(red: 153/255, green: 153/255, blue: 102/255, alpha: 1.0)
    static let lightGreen = UIColor.init(red: 106/255, green: 232/255, blue: 102/255, alpha: 1.0)
}
