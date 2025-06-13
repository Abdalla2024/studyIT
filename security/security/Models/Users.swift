//
//  Users.swift
//  security
//
//  Created by Rasheed Nolley on 6/12/25.
//

struct Users: Codable, Identifiable {
    var _id: UUID = UUID()
    var name:String
    var email: String
    var password: String
    var id: String {
        return _id.hexString
    }
    enum CodingKeys: String, CodingKey {
        case _id
        case name
        case email
        case password
    }
}
