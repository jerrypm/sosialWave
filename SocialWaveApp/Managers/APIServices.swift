//
//  HomePostsAPIService.swift
//  SocialWaveApp
//
//  Created by Jeri Purnama Maulid on 16/12/23.
//

import Foundation

protocol IHomePostsAPIService {
    func getHomePosts(success: @escaping JSONCompletionHandler, failed: @escaping ErrorMessageCompletionHandler)
}

protocol ISearchAPIService {
    func getListSearch(success: @escaping JSONCompletionHandler, failed: @escaping ErrorMessageCompletionHandler)
}

protocol IChatAPIService {
    func getListChats(success: @escaping JSONCompletionHandler, failed: @escaping ErrorMessageCompletionHandler)
}

protocol IProfileAPIService {
    func getProfile(success: @escaping JSONCompletionHandler, failed: @escaping ErrorMessageCompletionHandler)
}

class HomePostsAPIService: IHomePostsAPIService {
    func getHomePosts(success: @escaping JSONCompletionHandler, failed: @escaping ErrorMessageCompletionHandler) {
        let successMockResponse = JSONParser.shared.fetchJSON(jsonFileName: "homePosts")
        success(successMockResponse)
    }
}

class SearchAPIService: ISearchAPIService {
    func getListSearch(success: @escaping JSONCompletionHandler, failed: @escaping ErrorMessageCompletionHandler) {
        let successMockRespose = JSONParser.shared.fetchJSON(jsonFileName: "searchItems")
        success(successMockRespose)
    }
}

class ChatAPIService: IChatAPIService {
    func getListChats(success: @escaping JSONCompletionHandler, failed: @escaping ErrorMessageCompletionHandler) {
        let successMockResponse = JSONParser.shared.fetchJSON(jsonFileName: "chatUsers")
        success(successMockResponse)
    }
}

class ProfileAPIService: IProfileAPIService {
    func getProfile(success: @escaping JSONCompletionHandler, failed: @escaping ErrorMessageCompletionHandler) {
        let successMockResponse = JSONParser.shared.fetchJSON(jsonFileName: "profileUser")
        success(successMockResponse)
    }
}
