//
//  SearchBar.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 18/11/23.
//

import SwiftUI

struct SearchBarView: View {
    @State private var searchText = String.empty
    @State private var showCancelButton: Bool = false

    // MARK: - BODY

    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            Image.magnifyingglass
                .frame(width: 18, height: 18)
                .foregroundColor(.white)
            Text(SC.searchTab.value + SC.tripleDots.value)

            Spacer()
        }
        .frame(height: 28)
        .padding(.horizontal, 12)
        .padding(.vertical, 8)
        .background(Color.white.opacity(0.2))
        .cornerRadius(8)
    }
}
