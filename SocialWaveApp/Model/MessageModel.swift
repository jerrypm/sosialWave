//
//  MessageModel.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 26/11/23.
//

import Foundation
import SwiftyJSON

struct MessageModel {
    let senderName: String
    let timestamp: Date
    let messageText: String
}

// MARK: - Chat

struct ChatModel: Identifiable, Codable {
    var id: String? = UUID().uuidString
    let user: String
    let profilePicture: String
    let date, lastMessage: String
    let conversations: [Conversation]?

    enum CodingKeys: String, CodingKey {
        case id, user, date, conversations
        case profilePicture = "profile_picture"
        case lastMessage = "last_message"
    }

    init(data: JSON) {
        user = data[CodingKeys.user.rawValue].stringValue
        profilePicture = data[CodingKeys.profilePicture.rawValue].stringValue
        date = data[CodingKeys.date.rawValue].stringValue
        lastMessage = data[CodingKeys.lastMessage.rawValue].stringValue

        if let conversationsArray = data[CodingKeys.conversations.rawValue].array {
            conversations = conversationsArray.map { Conversation(data: $0) }
        } else {
            conversations = []
        }
    }
}

// MARK: - Conversation

struct Conversation: Identifiable, Codable, Hashable {
    enum CodingKeys: String, CodingKey {
        case date, type, message
    }

    let id = UUID()
    let date, type, message: String

    init(data: JSON) {
        date = data[CodingKeys.date.rawValue].stringValue
        type = data[CodingKeys.type.rawValue].stringValue
        message = data[CodingKeys.message.rawValue].stringValue
    }
}
