//
//  Services.swift
//  202010109
//
//  Created by PCS183 on 09/01/21.
//

import Moya
import Foundation

enum API {
    case getMovieList
    case search(query: String)
}

extension API: TargetType {
    var method: Moya.Method {
        return .get
    }
    
    var baseURL: URL {
        guard let url = URL(string: "https://api.themoviedb.org/3/") else { fatalError() }
        return url
    }
    
    var path: String {
        switch self {
        case .getMovieList:
            return "movie/"
        case .search:
            return "search/movie"
        }
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        switch self {
        case .getMovieList:
            return .requestParameters(parameters: ["api_key": "Constants.API.apiKey"], encoding: URLEncoding.queryString)
        case .search(let query):
            return .requestParameters(parameters: ["query" : query, "api_key": "Constants.API.apiKey"], encoding: URLEncoding.queryString)
        }
    }
    
    var headers: [String : String]? {
        return nil
    }
}
