//
//  SkillResourceViewController.swift
//  OSRS Helper Tool
//
//  Created by John Ingwersen on 7/2/17.
//  Copyright © 2017 Personal. All rights reserved.
//

import UIKit

class SkillResourceViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    static let skills = ["Attack", "Strength", "Defence", "Range", "Prayer", "Magic", "Runecraft", "Construction", "Hitpoints", "Agility", "Herblore", "Thieving", "Crafting", "Fletching", "Slayer", "Hunter", "Mining", "Smithing", "Fishing", "Cooking", "Firemaking", "Woodcutting", "Farming"]
    
    @IBOutlet weak var skillsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.skillsTableView.delegate = self
        self.skillsTableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 23
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //todo
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "skillCell", for: indexPath) as! SkillTableViewCell
        cell.skillNameLabel.text = SkillResourceViewController.skills[indexPath.row]
        cell.skillImageView.image = UIImage(named: "Attack")
        
        return cell
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
