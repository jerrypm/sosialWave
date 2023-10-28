//
//  Categories.swift
//  SocialWaveApp
//
//  Created by Jeri Purnama on 13/10/23.
//

import Foundation

enum Categories: String {
    case Entertainment
    case Music
    case Event
    case Place
    case Food
    
    func imageName() -> String {
        switch self {
        case .Entertainment:
            return "entertainment"
        case .Music:
            return "music"
        case .Event:
            return "event"
        case .Place:
            return "place"
        case .Food:
            return "food"
        }
    }
}

//MARK: Tab Type
enum TabType: Int {
    case home = 0
    case search = 1
    case chat = 2
    case profile = 3
}
