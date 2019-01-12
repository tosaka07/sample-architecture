//
//  Group.swift
//  SampleArchitectureDataLayer
//
//  Created by 坂上 翔悟 on 2019/01/12.
//  Copyright © 2019 tosaka.net. All rights reserved.
//

import Foundation

struct Group {
    /// グループの一意なID
    var id: Int
    /// グループに付けられた表示用の名前
    var name: String
    /// 非公開グループかどうか
    var `private`: Bool
    /// データが作成された日時
    var createdAt: Date
    /// データが最後に更新された日時
    var updatedAt: Date
    /// グループのチーム上での一意な名前
    var urlName: String
}

extension Group: Codable {
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case `private`
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case urlName = "url_name"
    }
}
