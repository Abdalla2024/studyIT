//
//  Answers.swift
//  security
//
//  Created by Abdalla Abdelmagid on 6/11/25.
//

import Foundation
import MongoDB

struct Answer: Codable, Identifiable {
    var _id: ObjectId
    var question: ObjectId  // Reference to the question's unique id
    var answer: String
    var isCorrect: Bool
    
    var id: String {
        return _id.hexString
    }
    
    enum CodingKeys: String, CodingKey {
        case _id
        case question
        case answer
        case isCorrect
    }
}

