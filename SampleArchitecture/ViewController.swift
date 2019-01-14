//
//  ViewController.swift
//  sample-architecture
//
//  Created by 坂上 翔悟 on 2019/01/12.
//  Copyright © 2019 tosaka.net. All rights reserved.
//

import UIKit
import Moya
import RxSwift
import SampleArchitectureDataLayer
import Alamofire

extension Environment {
    /// エンドポイントURL
    var domainApi: String {
        switch self {
        case .development:
            return "https://qiita.com/api/v2"
        case .staging:
            return "https://qiita.com/api/v2"
        case .production:
            return "https://qiita.com/api/v2"
        }
    }
}

class ViewController: UIViewController {

    let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()

        let decoder: JSONDecoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601

        ApiConstants.baseURL = Environment.development.domainApi

        let api = PostApiClient(provider: CustomMoyaProvider<QiitaApi>(manager: SessionManager()), jsonDecoder: decoder)
        api.fetchItems(query: "swift", page: "1", perPage: "1")
            .subscribe { event in
                switch event {
                case let .success(posts):
//                    print(posts)
                    print(posts.first?.createdAt ?? "ざんねん")
                default:
                    print(event)
                }
            }.disposed(by: disposeBag)
    }
}

