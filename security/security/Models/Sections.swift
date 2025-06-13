//
//  Sections.swift
//  security
//
//  Created by Abdalla Abdelmagid on 6/12/25.
//

import Foundation
import MongoDB

struct Section: Codable, Identifiable {
    var _id: ObjectId
    var title: String
    var displayOrder: String  // For example: "1.1", "2.3", etc.
    var score: Double  // Percentage score
    
    var id: String {
        return _id.hexString
    }
    
    enum CodingKeys: String, CodingKey {
        case _id
        case title
        case displayOrder
        case score
    }
}

