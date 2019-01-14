//
//  Tag.swift
//  SampleArchitectureDataLayer
//
//  Created by 坂上 翔悟 on 2019/01/12.
//  Copyright © 2019 tosaka.net. All rights reserved.
//

import Foundation

public struct Tag {
    /// このタグをフォローしているユーザの数
    public var followersCount: Int
    /// このタグに設定されたアイコン画像のURL
    public var iconUrl: String?
    /// タグを特定するための一意な名前
    public var id: String
    /// このタグが付けられた記事の数
    public var itemsCount: Int
}

extension Tag: Codable {
    enum CodingKeys: String, CodingKey {
        case followersCount = "followers_count"
        case iconUrl = "icon_url"
        case id
        case itemsCount = "items_count"
    }
}
