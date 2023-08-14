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
    
    struct GroupsModel: Decodable {
        var response: Groups
    }
    
    struct DataGroups: Decodable {
        var description: String?
        var name: String
    }
    
    struct Groups: Decodable {
        var items: [DataGroups]
    }
}
