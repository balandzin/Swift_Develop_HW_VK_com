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
        let url = URL(string: "https://api.vk.com/method/friends.get?fields=nickname,photo_50&access_token=\(NetworkService.token)&v=5.131")

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
        let url = URL(string: "https://api.vk.com/method/groups.get?fields=description&extended=1&access_token=\(NetworkService.token)&v=5.131")

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
    
    func getPhotos() {
        let url = URL(string: "https://api.vk.com/method/photos.get?fields=bdate&access_token=\(NetworkService.token)&v=5.131&album_id=profile")

        guard let url else {
            return
        }
        
        session.dataTask(with: url) { (data, response, error) in
            guard let data else {
                return
            }
            do {
                let extended = try
                    JSONDecoder().decode(PhotosModel.self, from: data)
                print(extended)
            } catch {
                print(error)
            }
        }.resume()
    }
    
}


