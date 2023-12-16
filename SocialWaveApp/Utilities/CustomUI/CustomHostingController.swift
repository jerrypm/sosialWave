//
//  CustomHostingController.swift
//  SocialWaveApp
//
//  Created by Jeri Purnama Maulid on 15/12/23.
//

import SwiftUI

// Custom UIHostingController for halfSheet....
class CustomHostingController<Content: View>: UIHostingController<Content> {
    override func viewDidLoad() {
        // setting presentation controller properties...
        if let presentationController = presentationController as?
            UISheetPresentationController
        {
            //Note: this large for full screen and medium for half bottom sheet
            presentationController.detents = [
                .medium()
//                .large()
            ]

            // To show grab portion...
            presentationController.prefersGrabberVisible = true
        }
    }
}
