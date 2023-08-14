//
//  FriendsModel.swift
//  hw_2
//
//  Created by Антон Баландин on 10.08.23.
//

import Foundation

struct FriendsModel: Decodable {

        var response: Friends

    }

    struct DataFriend: Decodable {
        var nickname: String?
        var avatar: String


        enum CodingKeys: String, CodingKey {
            case nickname
            case avatar = "photo_50"
        }
    }

struct Friends: Decodable {
    var items: [DataFriend]
}
