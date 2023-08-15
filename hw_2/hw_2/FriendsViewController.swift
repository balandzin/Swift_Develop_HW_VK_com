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
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        5
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //????FriendsCell.setupTextFriends(<#T##self: FriendsCell##FriendsCell#>)
       FriendsCell()
    }
}
