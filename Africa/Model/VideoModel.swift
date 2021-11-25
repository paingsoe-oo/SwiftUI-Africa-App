//
//  VideoModel.swift
//  Africa
//
//  Created by SoePaing on 01/10/2021.
//

import Foundation

struct Video: Codable, Identifiable {
    
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    var thumbnail: String {
        "video-\(id)"
    }
}
