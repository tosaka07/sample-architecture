//
//  Post.swift
//  SampleArchitectureDataLayer
//
//  Created by 坂上 翔悟 on 2019/01/12.
//  Copyright © 2019 tosaka.net. All rights reserved.
//

import Foundation

struct Post {
    /// HTML形式の本文
    var renderedBody: String
    /// Markdown形式の本文
    var body: String
    /// この記事が共同更新状態かどうか
    var coediting: Bool
    /// この記事へのコメントの数
    var commentsCount: Int
    /// データが作成された日時
    var createdAt: Date
    /// Qiita:Teamのグループ
    var group: Group?
    /// 記事の一意なID
    var id: String
    /// この記事への「いいね！」の数
    var likesCount: Int
    /// 限定共有状態かどうかを表すフラグ
    var `private`: Bool
    /// 絵文字リアクションの数
    var reactionsCount: Int
    /// 記事に付いたタグ一覧
    var tags: [Tagging]
    /// 記事のタイトル
    var title: String
    /// データが最後に更新された日時
    var updatedAt: Date
    /// 記事のURL
    var url: String
    /// Qiita上のユーザ
    var user: User
    /// 閲覧数
    var pageViewsCount: Int?
}

extension Post: Codable {
    enum CodingKeys: String, CodingKey {
        case renderedBody = "rendered_body"
        case body
        case coediting
        case commentsCount = "comments_count"
        case createdAt = "created_at"
        case group
        case id
        case likesCount = "likes_count"
        case `private`
        case reactionsCount = "reactions_count"
        case tags
        case title
        case updatedAt = "updated_at"
        case url
        case user
        case pageViewsCount = "page_views_count"
    }
}
