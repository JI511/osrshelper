//
//  SkillCalculationsViewController.swift
//  OSRS Helper Tool
//
//  Created by John Ingwersen on 7/2/17.
//  Copyright © 2017 Personal. All rights reserved.
//

import UIKit

class SkillCalculationsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate {

    @IBOutlet weak var skillNameLabel: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var goalLevelTextField: UITextField!
    @IBOutlet weak var methodTableView: UITableView!
    @IBOutlet weak var xpNeededLabel: UILabel!
    @IBOutlet weak var costLabel: UILabel!
    @IBOutlet weak var currentXpTextField: UITextField!
    @IBOutlet weak var resourcesLabel: UILabel!
    @IBOutlet weak var getXpCheckImageView: UIImageView!
    
    var skillIndex = 0
    var methodArray = [String]()
    var currentXP = 0
    var xpNeeded = 0
    var username = ""
    var selectedMethod = -1
    var playerHiscores = [String: RankLevelXp]()
    
    //getting player info
    let scheme = "http"
    let host = "services.runescape.com"
    let path = "/m=hiscore_oldschool/index_lite.ws"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.methodTableView.delegate = self
        self.methodTableView.dataSource = self
        self.methodArray = Constants.methods[Constants.skills[skillIndex]]!
        self.skillNameLabel.text = Constants.skills[skillIndex]
        self.getXpCheckImageView.isHidden = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func getXpForUsernameButton(_ sender: UIButton) {
        if usernameTextField.text != "" {
            let player = usernameTextField.text
            let queryItem = URLQueryItem(name: "player", value: player)
            var urlComponents = URLComponents()
            urlComponents.scheme = self.scheme
            urlComponents.host = self.host
            urlComponents.path = self.path
            urlComponents.queryItems = [queryItem]
            if let url = urlComponents.url {                
                URLSession.shared.dataTask(with: url) { data, response, error in
                    guard let data = data, error ==  nil, let string = String(data:data, encoding: .utf8) else { return }
                    print(string)
                    DispatchQueue.main.async {
                        self.getXpCheckImageView.isHidden = false
                        self.parseHiscores(text: string)
                        self.currentXpTextField.text = self.playerHiscores[Constants.skills[self.skillIndex]]?.xp
                    }
                    }.resume()
            }
        }
    }
    
    func parseHiscores(text: String){
        let skills = text.components(separatedBy: "\n")
        for i in 0..<24{
            let obj = skills[i].components(separatedBy: ",")
            if i == 0 {
                playerHiscores["Total"] = RankLevelXp.init(rank: obj[0], level: obj[1], xp: obj[2])
            } else {
                playerHiscores[Constants.skills[i-1]] = RankLevelXp.init(rank: obj[0], level: obj[1], xp: obj[2])
            }
        }
    }

    @IBAction func calculateButton(_ sender: UIButton) {
        self.currentXP = Int(currentXpTextField.text!)!
        self.username = usernameTextField.text!
        self.xpNeeded = Constants.levelXP[Int(goalLevelTextField.text!)! - 1] - self.currentXP
        self.xpNeededLabel.text = "\(self.xpNeeded)"
        if self.selectedMethod != -1 {
            showNeededCostInfo(index: self.selectedMethod)
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "skillMethodCell", for: indexPath) as! SkillMethodTableViewCell
        cell.methodLabel.text = methodArray[indexPath.row * 2]
        cell.gpXpLabel.text = "todo"
        cell.backgroundLabel.backgroundColor = UIColor.lightGray
        cell.methodImageView.image = UIImage(named: "Attack-icon")
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.methodArray.count / 2
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectedMethod = indexPath.row * 2
        showNeededCostInfo(index: indexPath.row)
    }
    
    func showNeededCostInfo(index: Int){
        if self.xpNeeded > 0 {
            let xpPer = Int(self.methodArray[index * 2 + 1])
            self.resourcesLabel.text = "\(Int(self.xpNeeded / xpPer!))"
        }
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
