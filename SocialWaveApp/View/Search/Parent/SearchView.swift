//
//  SearchView.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 25/10/23.
//

import SwiftUI

struct SearchView: View {
    // MARK: - PROPERTIES
    @StateObject var viewModel = SearchViewModel()
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            VStack {
                TitleToolBar(title: SC.searchTab.value)
                
                NavigationLink {
                    SearchSubView(searchText: $viewModel.searchText)
                } label: {
                    SearchBarView()
                }
                
                ScrollView(showsIndicators: false) {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(viewModel.searchItems, id: \.self) { text in
                            CardView(imageURL: text)
                        }
                    }
                }
            }
            .padding(.horizontal, 16)
            .background(Color.primary)
            .listStyle(.plain)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
