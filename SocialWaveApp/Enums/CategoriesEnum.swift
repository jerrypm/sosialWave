//
//  Categories.swift
//  SocialWaveApp
//
//  Created by Jeri Purnama on 13/10/23.
//

import SwiftUI

enum Categories: String {
    case trending
    case entertainment
    case music
    case event
    case place
    case food

    func name() -> String {
        switch self {
        case .trending:
            return "Trending"
        case .entertainment:
            return "Entertainment"
        case .music:
            return "Music"
        case .event:
            return "Event"
        case .place:
            return "Place"
        case .food:
            return "Food"
        }
    }

    func icon() -> Image {
        switch self {
        case .trending:
            return Image(systemName: "number.square")
        case .entertainment:
            return Image(systemName: "arrow.up.right.video")
        case .music:
            return Image(systemName: "music.note")
        case .event:
            return Image(systemName: "calendar")
        case .place:
            return Image(systemName: "network")
        case .food:
            return Image(systemName: "bag.circle")
        }
    }
}

// MARK: Tab Type

enum TabType: Int {
    case home = 0
    case search = 1
    case chat = 2
    case profile = 3
}
