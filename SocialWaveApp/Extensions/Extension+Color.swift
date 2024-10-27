//
//  Extension+Color.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 23/10/23.
//

import SwiftUI

public extension Color {
    // MARK: Category: Primary

    static var primary: Color {
        return Color(SC.primary_blue.value)
    }

    // MARK: Category: secondary

    static var secondary: Color {
        return Color(SC.secondary_orange.value)
    }

    // MARK: Category - Background

    static var backgroundDefault: Color {
        return Color(SC.background_primary.value)
    }
    
    static var backgroundWhite: Color {
        return Color(SC.neutral_white.value)
    }
    
    static var backgroundNeutral: Color {
        return Color(SC.neutral_gray_light.value)
    }

    // MARK: Category - Text
    
    static var textWhite: Color {
        return Color(SC.neutral_white.value)
    }

    static var textPrimary: Color {
        return Color(SC.text_primary.value)
    }

    // MARK: Category - Shadow

    static var shadow: Color {
        return Color(SC.background_shadow.value)
    }
    
    static var lightSilver: Color {
        return Color(SC.secondary_silver.value)
    }
    
    // MARK: Navigation Bar
    
    static var navbarLogo: Color {
        return Color(SC.navbar_left_logo.value)
    }
}
