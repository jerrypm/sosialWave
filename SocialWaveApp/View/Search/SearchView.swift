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
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            VStack {
                TitleToolBar(title: SC.searchTab.value)

                NavigationLink {
                    SearchSubView(searchText: $viewModel.searchText)
                } label: {
                    HStack(alignment: .center, spacing: 5) {
                        Image.magnifyingglass
                        .frame(width: 18, height: 18)
                        .foregroundColor(.gray)
                        
                        Text("Search Story")
                          .foregroundColor(Color(red: 0.72, green: 0.7, blue: 0.73))
                          .frame(width: 200, alignment: .topLeading)
                        Spacer()
                    }
                    .frame(height: 28)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 8)
                    .background(Color(red: 0.96, green: 0.96, blue: 0.96))
                    .cornerRadius(8)
                }
             
                ScrollView(showsIndicators: false) {
                    LazyVStack(spacing: 10) {
                        ForEach(viewModel.searchItems, id: \.self) { text in
                            HStack {
                                HStack(spacing: 0) {
                                    CardView()
                                    CardView()
                                    CardView()
                                }
                            }
                            
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

struct SearchSubView: View {
    @Binding var searchText: String
    @State private var searchResults: [String] = []
    
    var body: some View {
        VStack {
            TextField("Search", text: $searchText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            List(searchResults, id: \.self) { result in
                Text(result)
            }
            .listStyle(InsetGroupedListStyle())
        }
        .navigationTitle("Search")
        .onAppear {
            // Anda dapat melakukan pencarian awal di sini atau memuat data default.
        }
    }
}
