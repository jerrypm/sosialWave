//
//  SearchResultModel.swift
//  SocialWaveApp
//
//  Created by Jeri Purnama Maulid on 18/12/23.
//

import Foundation
import SwiftyJSON

// MARK: - SearchResult

struct SearchResultModel: Identifiable, Codable, Hashable {
    enum CodingKeys: String, CodingKey {
        case username
        case fullName = "full_name"
        case profilePicURL = "profile_pic_url"
        case bio
        case isVerified = "is_verified"
        case postImageURL = "post_image_url"
    }

    var id: String? = UUID().uuidString
    var username, fullName: String
    var profilePicURL: String
    var bio: String
    var isVerified: Bool
    var postImageURL: String

    init(data: JSON) {
        username = data[CodingKeys.username.rawValue].stringValue
        fullName = data[CodingKeys.fullName.rawValue].stringValue
        profilePicURL = data[CodingKeys.profilePicURL.rawValue].stringValue
        bio = data[CodingKeys.bio.rawValue].stringValue
        isVerified = data[CodingKeys.isVerified.rawValue].boolValue
        postImageURL = data[CodingKeys.postImageURL.rawValue].stringValue
    }
    
}
