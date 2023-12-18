//
//  SearchItemsView.swift
//  SocialWaveApp
//
//  Created by Jeri Purnama Maulid on 17/12/23.
//

import SwiftUI

struct SearchItemsView: View {
    // MARK: - PROPERTIES

    @AppStorage(SC.isShowTabBar.value) var isShowTabBar: Bool = true
    @State private var searchText = String.empty
    @State private var isSearching = false
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            ScrollView {
                HStack {
                    HStack {
                        TextField("Search Item here", text: $searchText)
                            .padding(.leading, 24)
                    }
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(6)
                    .padding(.horizontal)
                    .onTapGesture {
                        isSearching = true
                    }
                    .overlay {
                        HStack {
                            Image.magnifyingglass
                            Spacer()
                            
                            if isSearching {
                                Button(action: { searchText = String.empty }, label: {
                                    Image(systemName: "xmark.circle.fill")
                                        .padding(.vertical)
                                })
                            }
                        }
                        .padding(.horizontal, 32)
                        .foregroundColor(.gray)
                    }
                    .transition(.move(edge: .trailing))
                    .animation(.spring(), value: isSearching)
                    
                    if isSearching {
                        Button {
                            isSearching = false
                            searchText = String.empty
                            
                            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                        } label: {
                            Text("Cancel")
                                .padding(.trailing)
                                .padding(.leading, -12)
                        }
                        .transition(.move(edge: .trailing))
                        .animation(.spring(), value: isSearching)
                    }
                }
                
                ForEach((0 ..< 20).filter { "\($0)".contains(searchText) || searchText.isEmpty }, id: \.self) { num in
                    HStack {
                        Text("\(num)")
                        Spacer()
                    }
                    .padding()
                }
            }
            .background(Color.primary)
            .onAppear {
                isShowTabBar = false
            }
            .onDisappear {
                isShowTabBar = true
            }
        }
    }
}

#Preview {
    SearchItemsView()
}
