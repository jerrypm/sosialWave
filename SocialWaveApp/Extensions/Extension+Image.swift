//
//  Extension+Image.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 23/10/23.
//

import SwiftUI

public extension Image {
    // MARK: System

    static var magnifyingglass: Image {
        return Image(systemName: SC.magnifyingglass.value)
    }
    
    static var bookmark: Image {
        return Image(systemName: SC.bookmark.value)
    }
    
    static var gear: Image {
        return Image(systemName: SC.gear.value)
    }
    
    static var flag: Image {
        return Image(systemName: SC.flag.value)
    }
    
    static var close: Image {
        return Image(systemName: SC.close.value)
    }
    
    static var heart: Image {
        return Image(systemName: SC.heart.value)
    }
    
    static var heartFill: Image {
        return Image(systemName: SC.heartFill.value)
    }
    
    // MARK: Assets

    // Tabbar
    static var home: Image {
        return Image(uiImage: UIImage(named: SC.home.value)!)
    }
    
    static var chat: Image {
        return Image(uiImage: UIImage(named: SC.chat.value)!)
    }
    
    static var search: Image {
        return Image(uiImage: UIImage(named: SC.search.value)!)
    }
    
    static var profile: Image {
        return Image(uiImage: UIImage(named: SC.profile.value)!)
    }
    
    // post
    static var comment: Image {
        return Image(uiImage: UIImage(named: SC.comment.value)!)
    }
    
    static var share: Image {
        return Image(uiImage: UIImage(named: SC.share.value)!)
    }
}
