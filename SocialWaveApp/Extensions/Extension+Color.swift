//
//  Extension+Color.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 23/10/23.
//

import SwiftUI

extension Color {
    // MARK: Category: Primary
    public static var primary: Color {
        return Color(SC.darkCornflowerBlue.value)
    }
    
    // MARK: Category: secondary
    public static var secondary: Color {
        return Color(SC.caramel.value)
    }
    
    // MARK: Category - Blue
    public static var malibu: Color {
        return Color(SC.malibu.value)
    }
    
    // MARK: Category - Background
    public static var backgroundDefault: Color {
        return Color(SC.backgroundDefault.value)
    }
    
    // MARK: Category - Text
    public static var textPrimary: Color {
        return Color(SC.textPrimary.value)
    }
    
    // MARK: Category - Shadow
    
    public static var shadow: Color {
        return Color(SC.shadow.value)
    }
}
