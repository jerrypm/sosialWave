//
//  String.swift
//  SocialWaveApp
//
//  Created by Jeri Purnama on 13/10/23.
//

import Foundation

extension String {
    public static var empty: String {
        return SC.empty.value
    }
    
    func capitalizeFirstLetterOnly() -> String {
        let lowercasedInput = self.lowercased()
        return lowercasedInput.prefix(1).capitalized + lowercasedInput.dropFirst()
    }
}
