//
//  CategoryView.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 01/11/23.
//

import SwiftUI

struct CategoryView: View {
    // MARK: - PROPERTIES

    @State var category: Categories

    // MARK: - BODY

    var body: some View {
        HStack {
            category.icon()
                .foregroundColor(.textWhite)

            Text(category.name())
                .foregroundColor(.textWhite)
        }
        .padding(10)
        .background(Color.primary)
        .cornerRadius(10)
    }
}
