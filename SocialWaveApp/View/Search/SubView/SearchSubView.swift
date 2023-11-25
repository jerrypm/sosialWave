//
//  SearchSubView.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 18/11/23.
//

import SwiftUI

struct SearchSubView: View {
    @Binding var searchText: String
    @State private var searchResults: [String] = []
    
    var body: some View {
        VStack {
            TextField(SC.searchTab.value, text: $searchText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            List(searchResults, id: \.self) { result in
                Text(result)
            }
            .listStyle(InsetGroupedListStyle())
        }
        .navigationTitle(SC.searchTab.value)
        .onAppear {
            // Anda dapat melakukan pencarian awal di sini atau memuat data default.
        }
    }
}
