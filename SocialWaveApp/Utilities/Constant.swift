//
//  String+Constant.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 23/10/23.
//

import Foundation

typealias SC = StringConstant

enum StringConstant: String {
    //MARK: - Empty & Tab
    case empty = ""
    case dash = "-"
    case space = "   "
    
    case homeTab = "Home"
    case searchTab = "Search"
    case chatTab = "Chat"
    case profileTab = "Profile"
    
    //MARK: - Keys & Format
    case isShowTabBar = "isShowTabBar"
    case datePostFormat = "d MMM"
    
    //MARK: - Image System Name
    case newspaper = "newspaper"
    case magnifyingglass = "magnifyingglass"
    case bookmark = "bookmark"
    case gear = "gearshape"
    case flag = "flag.circle"
    case close = "xmark.circle"
    case heart = "heart"
    case heartFill = "heart.fill"
    
    //MARK: - Image Assets
    case home = "home"
    case search = "search"
    case chat = "chat_bubble"
    case profile = "person"
    case comment = "comment"
    case share = "share"
    
    //MARK: - Colors String
    case darkCornflowerBlue = "Dark Cornflower Blue"
    case caramel = "Caramel"
    case malibu = "Malibu"
    case backgroundDefault = "Background Default"
    case textPrimary = "Text Primary"
    case shadow = "Shadow Color"
    
    //MARK: - Other
    case imageTitle = "Social Wave"
    case searchStory = "Search Story"
    
    var value: String {
        return rawValue
    }
}
