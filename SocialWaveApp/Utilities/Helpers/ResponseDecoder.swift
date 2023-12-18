//
//  ResponseDecoder.swift
//  SocialWaveApp
//
//  Created by Jeri Purnama Maulid on 16/12/23.
//

import Foundation
import SwiftyJSON

class JSONParser {
    static let shared = JSONParser()
    private let decoder = JSONDecoder()

    func decode<T: Decodable>(jsonFileName fileName: String, to type: T.Type) -> T {
        let data = fetchJSONData(jsonFileName: fileName)
        let response = try! decoder.decode(T.self, from: data!)
        return response
    }

    func decode<T: Decodable>(jsonString: String, to type: T.Type) -> T {
        let data = Data(jsonString.utf8)
        let response = try! decoder.decode(T.self, from: data)
        return response
    }

    func fetchJSONData(jsonFileName fileName: String) -> Data? {
        let fileUrl = getJSONFileUrl(of: fileName)
        let data = try! Data(contentsOf: fileUrl)
        return data
    }

    func fetchJSON(jsonFileName fileName: String) -> JSON {
        let fileUrl = getJSONFileUrl(of: fileName)
        let data = try! Data(contentsOf: fileUrl)
        return try! JSON(data: data)
    }

    func convertToJSON(jsonString: String) -> JSON {
        let data = Data(jsonString.utf8)
        return try! JSON(data: data)
    }

    private func getJSONFileUrl(of filename: String) -> URL {
        let bundle = Bundle(for: type(of: self))
        return bundle.url(forResource: filename, withExtension: "json")! // file name not found, please give the correct file name
    }
}
