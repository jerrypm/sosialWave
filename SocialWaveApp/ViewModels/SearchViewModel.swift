//
//  SearchViewModel.swift
//  SocialWaveApp
//
//  Created by Jerry Purnama Maulid on 01/11/23.
//

import Foundation

class SearchViewModel: ObservableObject {
    @Published var searchText: String = .empty
    @Published var showCancelButton: Bool = false
    @Published var searchItems: [String] = []
    
    init() {
        searchItems =  [
            "post ikan",
            "post telur",
            "post data kami",
            "post ayam",
            "post sapi",
            "post sirup",
            "post rush",
        ]
    }
    
    func search() {
        // Implement search logic here
    }
    
}
