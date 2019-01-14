//
//  EmojiReaction.swift
//  SampleArchitectureDataLayer
//
//  Created by 坂上 翔悟 on 2019/01/12.
//  Copyright © 2019 tosaka.net. All rights reserved.
//

import Foundation

public struct EmojiReaction {
    /// データが作成された日時
    public var createdAt: Date
    /// 絵文字画像のURL
    public var imageUrl: String
    /// 絵文字の識別子
    public var name: String
    /// Qiita上のユーザ
    public var user: User
}

extension EmojiReaction: Codable {
    enum CodingKeys: String, CodingKey {
        case createdAt = "created_at"
        case imageUrl = "image_url"
        case name
        case user
    }
}
