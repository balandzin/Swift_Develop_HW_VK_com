//
//  PhotosModel.swift
//  hw_2
//
//  Created by Антон Баландин on 14.08.23.
//

import Foundation

struct PhotosModel: Codable {
    var name: String
    var surname: String
    
    struct PhotosModel: Decodable {
        
        var response: Photos
        
    }
    
    struct DataPhotos: Decodable {
        var sizes: [Sizes]
    }
    
    struct Sizes: Decodable {
        var url: String
    }
    
    struct Photos: Decodable {
        var items: [DataPhotos]
    }
}
