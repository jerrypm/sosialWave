//
//  String.swift
//  SocialWaveApp
//
//  Created by Jeri Purnama on 13/10/23.
//

import Foundation

public extension String {
    static var empty: String {
        return SC.empty.value
    }

    static var pipe: String {
        return SC.pipe.value
    }
    
    static var charS: String {
        return SC.charaterS.value
    }

    internal func capitalizeFirstLetterOnly() -> String {
        let lowercasedInput = self.lowercased()
        return lowercasedInput.prefix(1).capitalized + lowercasedInput.dropFirst()
    }
}
