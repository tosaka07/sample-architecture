//
//  PostApi.swift
//  SampleArchitectureDataLayer
//
//  Created by 坂上 翔悟 on 2019/01/12.
//  Copyright © 2019 tosaka.net. All rights reserved.
//

import Foundation
import Moya

public enum QiitaApi {
    case fetchPosts(query: String, page: String, perPage: String)
}

extension QiitaApi: TargetType {
    public var baseURL: URL {
        return URL(string: ApiConstants.baseURL)!
    }

    public var headers: [String : String]? {
        return ApiConstants.headers
    }
    
    public var path: String {
        return "/items"
    }

    public var method: Moya.Method {
        return .get
    }

    public var task: Task {
        switch self {
            case let .fetchPosts(query, page, perPage):
            return Task.requestParameters(parameters: ["query": query, "page": page, "per_page": perPage], encoding: URLEncoding.queryString)
        }
    }

    public var sampleData: Data {
        return Data()
//        let path = Bundle.main.path(forResource: "samples", ofType: "json")!
//        return FileHandle(forReadingAtPath: path)!.readDataToEndOfFile()
    }
}

