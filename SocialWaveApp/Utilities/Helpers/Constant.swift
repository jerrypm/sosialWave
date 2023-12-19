//
//  String+Constant.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 23/10/23.
//

import Foundation

typealias SC = StringConstant

enum StringConstant: String {
    // MARK: - Empty & Tab

    case empty = ""
    case dash = "-"
    case pipe = "|"
    case space = "   "
    case tripleDots = "..."
    case charaterS = "s"
    
    case homeTab = "Home"
    case searchTab = "Search"
    case chatTab = "Chat"
    case profileTab = "Profile"
    
    // MARK: - Keys & Format

    case isShowTabBar
    case datePostFormat = "d MMM"
    case scrollID = "scroll_to_top"
    
    // MARK: - Font Style

    case Rubik
    
    // MARK: - Image System Name

    case newspaper
    case magnifyingglass
    case bookmark
    case gear = "gearshape"
    case flag = "flag.circle"
    case close = "xmark.circle"
    case heart
    case heartFill = "heart.fill"
    case personCircle = "person.circle"
    case photo
    
    // MARK: - Image Assets

    case home
    case search
    case chat = "chat_bubble"
    case profile = "person"
    case comment
    case share
    
    // MARK: - Colors String

    case darkCornflowerBlue = "Dark Cornflower Blue"
    case caramel = "Caramel"
    case malibu = "Malibu"
    case backgroundDefault = "Background Default"
    case textPrimary = "Text Primary"
    case shadow = "Shadow Color"
    
    // MARK: - Other

    case imageTitle = "Social Wave"
    case searchStory = "Search Story"
    case following
    case followers
    case myPost = "My Post"
    case like = "Like"
    case likes = "Likes"
    case likesby = "Likes by"
    case likeUpost = "like your post"
    case comments = "Comments"
    case noCommentsYet = "No comments yet"
    case messages = "Messages"
    
    var value: String {
        return rawValue
    }
}
