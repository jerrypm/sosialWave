//
//  CustomNavigation.swift
//  SocialWaveApp
//
//  Created by Jeri Purnama Maulid on 27/10/24.
//

import SwiftUI

struct CustomNavigationView: View {
    @Binding var searchText: String

    var body: some View {
        HStack {
            Button(action: {
                // Action for left icon
                print("Left icon pressed")
            }) {
                Image.navbarLeft
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
            }
            .padding(.trailing, 12)

            TextField("What do you want to post? ......", text: $searchText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(maxWidth: .infinity, minHeight: 44)

            Spacer()
        }
        .padding()
        .background(Color.white)
    }
}
