//
//  RatingEnum.swift
//  SocialWaveApp
//
//  Created by Jeri Purnama on 13/10/23.
//

import Foundation

enum Rating: Int {
    case Terrible = 1
    case Bad = 2
    case Okay = 3
    case Good = 4
    case Great = 5

    func stringValue() -> String {
        switch self {
        case .Terrible:
            return "Terrible"
        case .Bad:
            return "Bad"
        case .Okay:
            return "Okay"
        case .Good:
            return "Good"
        case .Great:
            return "Great"
        }
    }
}
