//
//  EmojiReaction.swift
//  SampleArchitectureDataLayer
//
//  Created by 坂上 翔悟 on 2019/01/12.
//  Copyright © 2019 tosaka.net. All rights reserved.
//

import Foundation

struct EmojiReaction {
    /// データが作成された日時
    var createdAt: Date
    /// 絵文字画像のURL
    var imageUrl: String
    /// 絵文字の識別子
    var name: String
    /// Qiita上のユーザ
    var user: User
}

extension EmojiReaction: Codable {
    enum CodingKeys: String, CodingKey {
        case createdAt = "created_at"
        case imageUrl = "image_url"
        case name
        case user
    }
}
