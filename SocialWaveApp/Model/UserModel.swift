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
        case id, name, username, email, country, bio, following, followers
        case profileImageUrl = "profile_picture"
        case numberOfPosts, blocked, badgeCount, token
        case images
        case userLikes = "user_likes"
    }

    var id: String
    var name: String
    var username: String = .empty
    var profileImageUrl: String?
    var email: String
    var country: String = .empty
    var bio: String = .empty
    var following: [String]?
    var followers: [String]?
    var numberOfPosts: Int?
    var blocked: [String]?
    var badgeCount: Int?
    var token: String?

    var images: [String]?
    var userLikes: [UserLike]?

    init(data: JSON) {
        id = data[CodingKeys.id.rawValue].stringValue
        name = data[CodingKeys.name.rawValue].stringValue
        username = data[CodingKeys.username.rawValue].stringValue
        profileImageUrl = data[CodingKeys.profileImageUrl.rawValue].string
        email = data[CodingKeys.email.rawValue].stringValue
        country = data[CodingKeys.country.rawValue].stringValue
        bio = data[CodingKeys.bio.rawValue].stringValue
        following = data[CodingKeys.following.rawValue].array?.map { $0.stringValue }
        followers = data[CodingKeys.followers.rawValue].array?.map { $0.stringValue }
        numberOfPosts = data[CodingKeys.numberOfPosts.rawValue].int
        blocked = data[CodingKeys.blocked.rawValue].array?.map { $0.stringValue }
        badgeCount = data[CodingKeys.badgeCount.rawValue].int
        token = data[CodingKeys.token.rawValue].stringValue

        images = data[CodingKeys.images.rawValue].array?.map { $0.stringValue }

        if let commentsArray = data[CodingKeys.userLikes.rawValue].array {
            userLikes = commentsArray.map { UserLike(data: $0) }
        }
    }
}

// MARK: - UserLike

struct UserLike: Identifiable, Codable, Hashable {
    enum CodingKeys: String, CodingKey {
        case id = "user_id"
        case username, likedDate
    }

    let id, username, likedDate: String

    init(data: JSON) {
        id = data[CodingKeys.id.rawValue].stringValue
        username = data[CodingKeys.username.rawValue].stringValue
        likedDate = data[CodingKeys.likedDate.rawValue].stringValue
    }
}
