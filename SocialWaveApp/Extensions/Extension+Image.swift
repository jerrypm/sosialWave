//
//  Extension+Image.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 23/10/23.
//

import SwiftUI

extension Image {
    // MARK: System
    public static var magnifyingglass: Image {
        return Image(systemName: SC.magnifyingglass.value)
    }
    
    public static var bookmark: Image {
        return Image(systemName: SC.bookmark.value)
    }
    
    public static var gear: Image {
        return Image(systemName: SC.gear.value)
    }
    
    public static var flag: Image {
        return Image(systemName: SC.flag.value)
    }
    
    public static var close: Image {
        return Image(systemName: SC.close.value)
    }
    
    public static var heart: Image {
        return Image(systemName: SC.heart.value)
    }
    
    public static var heartFill: Image {
        return Image(systemName: SC.heartFill.value)
    }
    
    // MARK: Assets
    // Tabbar
    public static var home: Image {
        return Image(uiImage: UIImage(named: SC.home.value)!)
    }
    
    public static var chat: Image {
        return Image(uiImage: UIImage(named: SC.chat.value)!)
    }
    
    public static var search: Image {
        return Image(uiImage: UIImage(named: SC.search.value)!)
    }
    
    public static var profile: Image {
        return Image(uiImage: UIImage(named: SC.profile.value)!)
    }
    
    // post
    public static var comment: Image {
        return Image(uiImage: UIImage(named: SC.comment.value)!)
    }
    
    public static var share: Image {
        return Image(uiImage: UIImage(named: SC.share.value)!)
    }
}
