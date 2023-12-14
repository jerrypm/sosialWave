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
//            TextField(SC.search.value, text: $searchText, onEditingChanged: { isEditing in
//                showCancelButton = true
//            }, onCommit: {
//                print("onCommit")
//            })
//            .foregroundColor(.white)
//            .frame(width: 200, alignment: .topLeading)
            
            Spacer()
        }
        .frame(height: 28)
        .padding(.horizontal, 12)
        .padding(.vertical, 8)
        .background(Color.white.opacity(0.2))
        .cornerRadius(8)
    }
}
