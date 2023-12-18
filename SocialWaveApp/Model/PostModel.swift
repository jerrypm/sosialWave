//
//  PostModel.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 23/10/23.
//

import Foundation
import SwiftyJSON

struct Post: Identifiable, Codable {
    enum CodingKeys: String, CodingKey {
        case id
        case profileImg
        case topic
        case imageUrl
        case category
        case review
        case comments
        case createdBy
        case date
        case likes
        case numberOfComments
    }

//    @DocumentID var id: String? = UUID().uuidString
    var id: String? = UUID().uuidString
    var profileImg: String?
    var topic: String?
    var imageUrl: String?
    var category: String?
    var review: Int?
    var comments: String?
    var createdBy: String?
    var date: Date?
    var likes: [String]?
    var numberOfComments: Int?

    init(data: JSON) {
        id = data["id"].stringValue
        profileImg = data["profile_picture"].stringValue
        topic = data["topic"].stringValue
        imageUrl = data["imageUrl"].stringValue
        category = data["category"].stringValue
        review = data["review"].int
        comments = data["comments"].stringValue
        createdBy = data["createdBy"].stringValue
        let dateString = data["date"].stringValue
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        date = dateFormatter.date(from: dateString)

        likes = data["likes"].array?.compactMap { $0.string }
        numberOfComments = data["numberOfComments"].int
    }
}
