//
//  GroupsModel.swift
//  hw_2
//
//  Created by Антон Баландин on 10.08.23.
//

import Foundation

struct GroupsModel: Codable {
    var name: String
    var surname: String
    
    struct GroupsModel: Codable {
        var response: Groups
    }
    
    struct DataGroups: Codable {
        var description: String?
        var name: String
    }
    
    struct Groups: Codable {
        var items: [DataGroups]
    }
}
