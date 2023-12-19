//
//  PostModel.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 23/10/23.
//

import Foundation
import SwiftyJSON

struct PostModel: Identifiable, Codable {
    enum CodingKeys: String, CodingKey {
        case id
        case profileImg = "profile_picture"
        case topic
        case imageUrl
        case category
        case review
        case descriptionPost = "description"
        case createdBy
        case date
        case likes
        case comments
    }

//    @DocumentID var id: String? = UUID().uuidString
    var id: String? = UUID().uuidString
    var profileImg: String?
    var topic: String?
    var imageUrl: String?
    var category: String?
    var review: Int?
    var descriptionPost: String?
    var createdBy: String?
    var date: Date?
    var likes: [String]?
    var comments: [CommentPost]?

    init(data: JSON) {
        id = data[CodingKeys.id.rawValue].stringValue
        profileImg = data[CodingKeys.profileImg.rawValue].stringValue
        topic = data[CodingKeys.topic.rawValue].stringValue
        imageUrl = data[CodingKeys.imageUrl.rawValue].stringValue
        category = data[CodingKeys.category.rawValue].stringValue
        review = data[CodingKeys.review.rawValue].int
        descriptionPost = data[CodingKeys.descriptionPost.rawValue].stringValue
        createdBy = data[CodingKeys.createdBy.rawValue].stringValue
        let dateString = data[CodingKeys.date.rawValue].stringValue
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        date = dateFormatter.date(from: dateString)

        likes = data[CodingKeys.likes.rawValue].array?.compactMap { $0.string }

        if let commentsArray = data[CodingKeys.comments.rawValue].array {
            comments = commentsArray.map { CommentPost(data: $0) }
        }
    }
}

struct CommentPost: Identifiable, Codable, Hashable {
    enum CodingKeys: String, CodingKey {
        case user, comment, profilePicture
    }

    let id = UUID()
    let user, comment: String
    let profilePicture: String

    init(data: JSON) {
        user = data[CodingKeys.user.rawValue].stringValue
        comment = data[CodingKeys.comment.rawValue].stringValue
        profilePicture = data[CodingKeys.profilePicture.rawValue].stringValue
    }
}
