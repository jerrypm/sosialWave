//
//  CommentModel.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 23/10/23.
//

import Foundation

struct Comment: Identifiable, Codable {
//    @DocumentID var id: String? = UUID().uuidString
    var id: String? = UUID().uuidString
    var postId: String?
    var submittedBy: String?
    var date: Date?
    var comment: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case postId
        case submittedBy
        case date
        case comment
    }
}
