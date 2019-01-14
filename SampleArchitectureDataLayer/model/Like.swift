//
//  Like.swift
//  SampleArchitectureDataLayer
//
//  Created by 坂上 翔悟 on 2019/01/12.
//  Copyright © 2019 tosaka.net. All rights reserved.
//

import Foundation

public struct Like {
    /// データが作成された日時
    public var createdAt: Date
    /// Qiita上のユーザ
    public var user: User
}

extension Like: Codable {
    enum CodingKeys: String, CodingKey {
        case createdAt = "created_at"
        case user
    }
}
