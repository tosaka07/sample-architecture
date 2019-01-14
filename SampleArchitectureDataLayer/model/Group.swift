//
//  Group.swift
//  SampleArchitectureDataLayer
//
//  Created by 坂上 翔悟 on 2019/01/12.
//  Copyright © 2019 tosaka.net. All rights reserved.
//

import Foundation

public struct Group {
    /// グループの一意なID
    public var id: Int
    /// グループに付けられた表示用の名前
    public var name: String
    /// 非公開グループかどうか
    public var `private`: Bool
    /// データが作成された日時
    public var createdAt: Date
    /// データが最後に更新された日時
    public var updatedAt: Date
    /// グループのチーム上での一意な名前
    public var urlName: String
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
