//
//  String+Constant.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 23/10/23.
//

import Foundation

typealias SC = StringConstant

enum StringConstant: String {
    case appUserID = "1212"

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

    case userID
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
    case arrowUpCircleFill = "arrow.up.circle.fill"

    // MARK: - Image Assets

    case home = "tabbar_home"
    case search = "tabbar_search"
    case chat = "tabbar_chat"
    case profile = "tabbar_profile"
    case comment = "icon_comment"
    case share = "icon_share"
    case filter = "icon_filter"
    case imageTitle = "image_title_blue"
    case navbar_left_logo

    // MARK: - Colors String

    case primary_blue
    case secondary_orange
    case secondary_silver
    case background_primary
    case background_shadow
    case neutral_white
    case neutral_gray_light
    case text_primary

    // MARK: - Other text

    case searchStory = "Search Story"
    case following
    case followers
    case editProfile = "Edit Profile"
    case follow = "Follow"
    case unfollow = "Unfollow"

    case myPost = "My Post"
    case like = "Like"
    case likes = "Likes"
    case likesby = "Likes by"
    case likeUpost = "like your post"
    case comments = "Comments"
    case noCommentsYet = "No comments yet"
    case messages = "Messages"
    case now
    case yesterday
    case showMore = "show more"
    case hide
    case post = "Post"

    var value: String {
        return rawValue
    }
}
