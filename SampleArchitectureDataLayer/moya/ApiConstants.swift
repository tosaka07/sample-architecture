//
//  QiitaApiTargetType.swift
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


public enum Environment: String {
    case development
    case staging
    case production
}

/// OpenApi-gen は staticに渡すためそれに倣う
public struct ApiConstants {
    public static var baseURL: String = ""
    public static var headers: [String: String]?
}

public class CustomMoyaProvider<T: TargetType>: MoyaProvider<T> {
    public init(manager: SessionManager) {
        super.init(manager: manager)
    }
}
