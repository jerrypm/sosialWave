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
    var isSelected: Bool

    // MARK: - BODY

    var body: some View {
        HStack {
            category.icon()
                .foregroundColor(isSelected ? .textWhite : .primary)
                .frame(width: 12, height: 12)

            Text(category.name())
                .foregroundColor(isSelected ? .textWhite : .primary)
                .font(.system(size: 12))
        }
        .padding(8)
        .background(isSelected ? Color.primary : Color.white)
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(isSelected ? Color.primary : .lightSilver, lineWidth: 1)
        )
    }
}
