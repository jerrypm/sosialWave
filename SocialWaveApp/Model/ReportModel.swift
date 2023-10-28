//
//  ReportModel.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 23/10/23.
//

import Foundation

struct Report: Identifiable, Codable, Equatable {
//    @DocumentID var id = UUID().uuidString
    var id = UUID().uuidString
    var reportUser: String?
    var submitter: String?
    var reasons: [String]?
    var date: Date?
    
    enum CodingKeys: String, CodingKey {
        case id
        case reportUser
        case submitter
        case reasons
        case date
    }
    
}
