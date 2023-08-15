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
    
    struct PhotosModel: Codable {
        
        var response: Photos
        
    }
    
    struct DataPhotos: Codable {
        var sizes: [Sizes]
    }
    
    struct Sizes: Codable {
        var url: String
    }
    
    struct Photos: Codable {
        var items: [DataPhotos]
    }
}
