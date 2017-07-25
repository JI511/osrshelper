//
//  SkillResourceViewController.swift
//  OSRS Helper Tool
//
//  Created by John Ingwersen on 7/2/17.
//  Copyright © 2017 Personal. All rights reserved.
//

import UIKit

class SkillResourceViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    
    @IBOutlet weak var skillsTableView: UITableView!
    
    var index = 0
    var selectedSkills = Constants.skills
    var skillName = ""
    
    @IBAction func showAllSkillsButton(_ sender: UIButton) {
        self.selectedSkills = Constants.skills
        self.skillsTableView.reloadData()
    }
    @IBAction func showBuyableSkillsButton(_ sender: UIButton) {
        self.selectedSkills = Constants.buyableSkills
        self.skillsTableView.reloadData()
    }
    @IBAction func showCombatSkillsButton(_ sender: UIButton) {
        self.selectedSkills = Constants.combatSkills
        self.skillsTableView.reloadData()
    }
    @IBAction func showGatheringSkillsButton(_ sender: UIButton) {
        self.selectedSkills = Constants.gatheringSkills
        self.skillsTableView.reloadData()
    }
    @IBAction func showSupportSkillsButton(_ sender: UIButton) {
        self.selectedSkills = Constants.supportSkills
        self.skillsTableView.reloadData()
    }
    

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
    
    func findSkillIndex(text: String) -> Int{
        return Constants.skills.index(of: text)!
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.selectedSkills.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.skillName = self.selectedSkills[indexPath.row]
        self.index = findSkillIndex(text: self.skillName)
        if self.selectedSkills != Constants.combatSkills {
            self.performSegue(withIdentifier: "skillCalcSegue", sender: self)
        } else {
            //combat
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "skillCell", for: indexPath) as! SkillTableViewCell
        cell.skillNameLabel.text = self.selectedSkills[indexPath.row]
        cell.skillOutlineLabel.text = self.selectedSkills[indexPath.row]
        cell.skillNameLabel.textColor = Constants.skillSecondaryColors[self.selectedSkills[indexPath.row]]
        cell.skillImageView.image = Constants.imageSkills[self.selectedSkills[indexPath.row]]
        cell.backgroundColor = Constants.skillPrimaryColors[self.selectedSkills[indexPath.row]]
        
        return cell
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let destinationVC = segue.destination as? SkillCalculationsViewController {
            destinationVC.skillIndex = self.index
        }
    }
    

}
