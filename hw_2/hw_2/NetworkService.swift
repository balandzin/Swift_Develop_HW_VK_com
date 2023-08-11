//
//  NetworkService.swift
//  hw_2
//
//  Created by Антон Баландин on 10.08.23.
//

import Foundation

final class NetworkService {
    private let session = URLSession.shared
    
    static var token = ""
    static var userID = ""
    
    func getFriends() {
        let url = URL(string:   "https://api.vk.com/method/users.get?user_ids=51726206&fields=nickname HTTP/1.1")

        guard let url else {
            return
        }
        
        session.dataTask(with: url) { (data, response, error) in
            guard let data else {
                return
            }
            do {
                let nickname = try
                    JSONDecoder().decode(FriendsModel.self, from: data)
                print(nickname)
            } catch {
                print(error)
            }
        }.resume()
    }
    
    
    func getGroups() {
        let url = URL(string: "https://api.vk.com/method/users.get?user_ids=51726206&extended=1")

        guard let url else {
            return
        }
        
        session.dataTask(with: url) { (data, response, error) in
            guard let data else {
                return
            }
            do {
                let extended = try
                    JSONDecoder().decode(GroupsModel.self, from: data)
                print(extended)
            } catch {
                print(error)
            }
        }.resume()
    }
}


