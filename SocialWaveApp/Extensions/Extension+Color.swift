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
        return Color(SC.darkCornflowerBlue.value)
    }

    // MARK: Category: secondary

    static var secondary: Color {
        return Color(SC.caramel.value)
    }

    // MARK: Category - Blue

    static var malibu: Color {
        return Color(SC.malibu.value)
    }

    // MARK: Category - Background

    static var backgroundDefault: Color {
        return Color(SC.backgroundDefault.value)
    }
    
    static var backgroundWhite: Color {
        return Color(SC.natural.value)
    }
    
    static var backgroundNatural: Color {
        return Color(SC.natural00.value)
    }

    // MARK: Category - Text
    
    static var textWhite: Color {
        return Color(SC.natural.value)
    }

    static var textPrimary: Color {
        return Color(SC.textPrimary.value)
    }

    // MARK: Category - Shadow

    static var shadow: Color {
        return Color(SC.shadow.value)
    }
}
