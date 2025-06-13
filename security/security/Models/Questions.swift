//
//  Questions.swift
//  security
//
//  Created by Abdalla Abdelmagid on 6/11/25.
//

import Foundation
import MongoDB

struct Question: Codable, Identifiable {
    var _id: ObjectId
    var question: String
    var section: ObjectId  // Reference to the section's unique id
    
    var id: String {
        return _id.hexString
    }
    
    enum CodingKeys: String, CodingKey {
        case _id
        case question
        case section
    }
}

