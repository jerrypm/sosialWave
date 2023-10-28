//
//  Error.swift
//  SocialWaveApp
//
//  Created by Jeri Purnama on 13/10/23.
//

import Foundation

public extension NSError {
    static var emptyData: NSError {
        let error = NSError(
            domain: "",
            code: 204,
            userInfo: [NSLocalizedDescriptionKey: "Data Not Found"])
        return error
    }
}
