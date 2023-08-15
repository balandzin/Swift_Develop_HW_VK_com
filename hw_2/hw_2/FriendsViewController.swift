//
//  ViewController1.swift
//  hw_2
//
//  Created by Антон Баландин on 8.08.23.
//

import Foundation
import UIKit

class FriendsViewController: UITableViewController {
    
    private var networkService = NetworkService()
    private var models: [FriendsModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Friends"
        tableView.backgroundColor = UIColor.white
        
        tableView.register(FriendsCell.self, forCellReuseIdentifier: "FrieindsCell")
        
        networkService.getFriends()
    }
    
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        5
//    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        models.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier:
        "FrieindsCell", for: indexPath)
      
        let model = models[indexPath.row]
        
        guard let cell = cell as? FriendsCell else {
        return UITableViewCell()
        }
        
        cell.setupTextFriends(friend: model)
        return cell
    }
}
