//
//  Comment.swift
//  SampleArchitectureDataLayer
//
//  Created by 坂上 翔悟 on 2019/01/12.
//  Copyright © 2019 tosaka.net. All rights reserved.
//

import Foundation

public struct Comment {
    /// コメントの内容を表すMarkdown形式の文字列
    public var body: String
    /// データが作成された日時
    public var createdAt: Date
    /// コメントの一意なID
    public var id: String
    /// コメントの内容を表すHTML形式の文字列
    public var renderedBody: String
    /// データが最後に更新された日時
    public var updatedAt: Date
    /// Qiita上のユーザ
    public var user: User
}

extension Comment: Codable {
    enum CodingKeys: String, CodingKey {
        case body = "body"
        case createdAt = "created_at"
        case id = "id"
        case renderedBody = "rendered_body"
        case updatedAt = "updated_at"
        case user = "user"
    }
}
