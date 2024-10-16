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
                .frame(width: 12, height: 12)

            Text(category.name())
                .foregroundColor(.textWhite)
                .font(.system(size: 12))
        }
        .padding(8)
        .background(Color.primary)
        .cornerRadius(8)
    }
}
