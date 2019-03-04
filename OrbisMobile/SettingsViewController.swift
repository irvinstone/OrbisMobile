//
//  SettingsViewController.swift
//  OrbisMobile
//
//  Created by Irvin Leon on 3/4/19.
//  Copyright © 2019 orbis. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var settingsViewTable: UITableView!
    
    let numberOfSections        = 2
    let headers                  = ["About","Settings"]
    let cellIdentifier          = "settingsCell"
    let about                   = ["name","age","type","address"]
    let settings                = ["private","game","place","fit"]
    override func viewDidLoad() {
        super.viewDidLoad()
        settingsViewTable.delegate          = self
        settingsViewTable.dataSource        = self
        settingsViewTable.tableFooterView   = UIView()

        // Do any additional setup after loading the view.
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension SettingsViewController:UITableViewDelegate{
    
}
extension SettingsViewController:UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return numberOfSections
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return headers[section]
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section == 0){
            return about.count
        }
        return settings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if(indexPath.section == 0){
            let cell = settingsViewTable.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
            cell.textLabel?.text = about[indexPath.row]
            return cell;
        }
        let cell = settingsViewTable.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.textLabel?.text = settings[indexPath.row]
        return cell;
        
    }
    
    
}
