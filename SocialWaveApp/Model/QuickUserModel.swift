//
//  QuickUserModel.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 23/10/23.
//

import Foundation

class QuickUser: Identifiable, Codable {
    var id: String
    var name: String
    var username: String?
    var profileImageUrl: String?
    
    init(id: String, name: String, username: String?, profileImageUrl: String?) {
        self.id = id
        self.name = name
        self.username = username
        self.profileImageUrl = profileImageUrl
    }
}
