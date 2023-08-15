//
//  FriendsModel.swift
//  hw_2
//
//  Created by Антон Баландин on 10.08.23.
//

import Foundation

struct FriendsModel: Codable {

    var response: Friends

        }

        struct DataFriend: Codable {
            var nickname: String?
            var avatar: String


            enum CodingKeys: String, CodingKey {
                case nickname
                case avatar = "photo_50"
            }
        }

    struct Friends: Codable {
        var items: [DataFriend]
}
