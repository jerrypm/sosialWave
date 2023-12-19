//
//  NotificationModel.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 23/10/23.
//

import Foundation

struct AppNotification: Identifiable, Codable {
//    @DocumentID var id: String? = UUID().uuidString
    var id = UUID().uuidString
    var type: String?
    var submittedBy: String?
    var date: Date?
    var postId: String?
    var comment: String?
    var submitterName: String?

    var typeEnum: NotificationType {
        NotificationType(rawValue: self.type ?? .empty) ?? .Comment
    }

    enum CodingKeys: String, CodingKey {
        case id
        case type
        case submittedBy
        case date
        case postId
        case comment
        case submitterName
    }
}
