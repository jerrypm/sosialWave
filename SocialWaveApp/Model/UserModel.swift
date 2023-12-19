//
//  UserModel.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 23/10/23.
//

import Foundation
import SwiftyJSON

struct UserModel: Identifiable, Codable, Hashable {
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case username
        case profileImageUrl
        case email
        case country
        case bio
        case following
        case followers
        case numberOfPosts
        case blocked
        case badgeCount
        case token
    }

    var id: String
    var name: String
    var username: String = ""
    var profileImageUrl: String?
    var email: String
    var country: String = ""
    var bio: String = ""
    var following: [String]?
    var followers: [String]?
    var numberOfPosts: Int?
    var blocked: [String]?
    var badgeCount: Int?
    var token: String?
    
    
}
