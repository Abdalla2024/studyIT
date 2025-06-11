//
//  Definitions.swift
//  security
//
//  Created by Abdalla Abdelmagid on 6/11/25.
//

import Foundation
import MongoDB

struct Definition: Codable, Identifiable {
    var _id: ObjectId
    var term: String
    var definition: String
    
    var id: String {
        return _id.hexString
    }
    
    enum CodingKeys: String, CodingKey {
        case _id
        case term
        case definition
    }
}

