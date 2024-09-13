//
//  User.swift
//  ThreadsClone
//
//  Created by Hanan Farizta on 14/08/24.
//

import Foundation

struct User: Identifiable, Codable, Hashable {
    let id: String
    let fullname: String
    let email: String
    let username: String
    var profileImageUrl: String?
    var bio: String?
}
