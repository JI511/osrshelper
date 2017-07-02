//
//  SkillCalculationsViewController.swift
//  OSRS Helper Tool
//
//  Created by John Ingwersen on 7/2/17.
//  Copyright © 2017 Personal. All rights reserved.
//

import UIKit

class SkillCalculationsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var skillNameLabel: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var currentXpLabel: UILabel!
    @IBOutlet weak var goalLevelTextField: UITextField!
    @IBOutlet weak var methodTableView: UITableView!
    @IBOutlet weak var xpNeededLabel: UILabel!
    @IBOutlet weak var costLabel: UILabel!
    @IBOutlet weak var TimeLabel: UILabel!
    
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.methodTableView.delegate = self
        self.methodTableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func getXpForUsernameButton(_ sender: UIButton) {
        //todo
    }

    @IBAction func calculateButton(_ sender: UIButton) {
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "skillMethodCell", for: indexPath) as! SkillMethodTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //todo
        return 3
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //todo
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
