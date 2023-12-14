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
    @State private var isSheetPresented = false
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            VStack {
                TitleToolBar(title: SC.searchTab.value)
                
                Button {
                    isSheetPresented.toggle()
                } label: {
                    SearchBarView()
//                    Text("Here")
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
            
            .sheet(isPresented: $isSheetPresented) {
                CustomBottomSheetView()
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}


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
