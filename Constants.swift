//
//  Constants.swift
//  OSRS Helper Tool
//
//  Created by John Ingwersen on 7/4/17.
//  Copyright © 2017 Personal. All rights reserved.
//

import Foundation

class Constants {
    //All 23 skills in game.
    static let skills = ["Attack", "Strength", "Defence", "Range", "Prayer", "Magic", "Runecraft", "Construction", "Hitpoints", "Agility", "Herblore", "Thieving", "Crafting", "Fletching", "Slayer", "Hunter", "Mining", "Smithing", "Fishing", "Cooking", "Firemaking", "Woodcutting", "Farming"]

    //List of all methods for each skill
    static let methods: [String: [String]] = ["Construction" : Constants.constructionMethods]
    //Individual skills with xp value following name
    static let constructionMethods: [String] = ["Planks", "40", "Oak Planks", "60", "Mahogany Logs", "0", "Teak Logs", "0"]
}
