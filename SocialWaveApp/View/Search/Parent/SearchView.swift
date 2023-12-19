//
//  SearchView.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 25/10/23.
//

import SwiftUI

struct SearchView: View {
    // MARK: - PROPERTIES

    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    @StateObject var viewModel = SearchViewModel(searchAPI: SearchAPIService())
    @State private var searchQuery = String.empty
    @State private var isActive = false

    // MARK: - BODY

    var body: some View {
        NavigationView {
            VStack {
                navigationLink()
                Button(action: { isActive.toggle() }) {
                    SearchBarView()
                }

                ScrollView(showsIndicators: false) {
                    LazyVGrid(columns: columns, spacing: 5) {
                        ForEach(viewModel.searchResults, id: \.self) { item in
                            let screenWidth = UIScreen.main.bounds.width
                            let totalSpacing = CGFloat(columns.count - 1) * 10
                            let adjustedWidth = (screenWidth - totalSpacing - 32) / CGFloat(columns.count)
                            CardView(imageURL: item.postImageURL, width: adjustedWidth)
                                .padding(.horizontal, 5)
                        }
                    }
                }
            }
            .padding(.horizontal, 16)
            .background(Color.primary)
            .listStyle(.plain)
            .onAppear(perform: viewModel.fetchSearch)
        }
    }

    private func navigationLink() -> some View {
        NavigationLink(destination: SearchItemsView(), isActive: $isActive) { EmptyView() }.opacity(0)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
