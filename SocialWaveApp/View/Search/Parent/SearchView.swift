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
    @StateObject var viewModel = SearchViewModel()
    #warning("delete soon or add bottom sheer")
    @State private var isSheetPresented = false
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
                        ForEach(viewModel.searchItems, id: \.self) { text in
                            let screenWidth = UIScreen.main.bounds.width
                            let totalSpacing = CGFloat(columns.count - 1) * 10
                            let adjustedWidth = (screenWidth - totalSpacing - 32) / CGFloat(columns.count)
                            CardView(imageURL: text, width: adjustedWidth)
                                .padding(.horizontal, 5)
                        }
                    }
                }
            }
            .padding(.horizontal, 16)
            .background(Color.primary)
            .listStyle(.plain)
            .halfSheet(showSheet: $isSheetPresented) { #warning("delete soon or add bottom sheer")
                CustomBottomSheetView()
                    .frame(height: UIScreen.main.bounds.height * 1 / 3)
                    .background(Color.black.opacity(0.3))
            }
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

#warning("delete soon")
// will delete soon bcz this fill from bottom sheet
struct CustomBottomSheetView: View {
    var body: some View {
        VStack {
            Text("Custom Bottom Sheet")
                .font(.largeTitle)
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: 300)
        .background(Color.gray.opacity(0.2))
        .cornerRadius(20)
    }
}
