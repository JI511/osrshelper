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
        self.index = indexPath.row
        //for now just always assume buyable, needs to be fixed to handle combat
        self.performSegue(withIdentifier: "skillCalcSegue", sender: self)
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "skillCell", for: indexPath) as! SkillTableViewCell
        cell.skillNameLabel.text = Constants.skills[indexPath.row]
        cell.skillImageView.image = Constants.imageSkills[indexPath.row]
        
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
