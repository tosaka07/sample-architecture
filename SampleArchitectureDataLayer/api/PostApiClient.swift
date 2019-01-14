//
//  PostAPI.swift
//  SampleArchitectureDataLayer
//
//  Created by 坂上 翔悟 on 2019/01/12.
//  Copyright © 2019 tosaka.net. All rights reserved.
//

import Foundation
import RxSwift
import Moya
import RxMoya
import Alamofire

public protocol PostApiClientProtocol {
    /// 投稿一覧を取得する
    ///
    /// - Parameters:
    ///   - query: 検索クエリ
    ///   - page: ページ番号 (1から100まで)
    ///   - perPage: 1ページあたりに含まれる要素数 (1から100まで)
    /// - Returns: 投稿一覧
    func fetchItems(query: String, page: String, perPage: String) -> Single<[Post]>
}

public class PostApiClient: PostApiClientProtocol {
    private let provider: CustomMoyaProvider<QiitaApi>
    private let jsonDecoder: JSONDecoder

    public init(provider: CustomMoyaProvider<QiitaApi>, jsonDecoder: JSONDecoder) {
        self.provider = provider
        self.jsonDecoder = jsonDecoder
    }

    public func fetchItems(query: String, page: String, perPage: String) -> Single<[Post]> {
        return self.provider.rx
            .request(.fetchPosts(query: query, page: page, perPage: perPage))
            .map([Post].self, atKeyPath: nil, using: jsonDecoder, failsOnEmptyData: false)
    }
}
