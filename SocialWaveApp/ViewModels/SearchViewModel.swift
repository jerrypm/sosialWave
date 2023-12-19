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
    @Published var searchResults: [SearchResultModel] = []

    private let searchAPIService: ISearchAPIService

    init(searchAPI: ISearchAPIService) {
        searchAPIService = searchAPI
    }

    func fetchSearch() {
        searchAPIService.getListSearch { [weak self] response in
            guard let self = self else { return }
            let postsData = response["search_results"].arrayValue
            self.searchResults = postsData.compactMap { item in
                SearchResultModel(data: item)
            }

        } failed: { message in
            print("Error \(message)")
        }
    }
}
