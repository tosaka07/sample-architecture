//
//  Post.swift
//  SampleArchitectureDataLayer
//
//  Created by 坂上 翔悟 on 2019/01/12.
//  Copyright © 2019 tosaka.net. All rights reserved.
//

import Foundation

public struct Post {
    /// HTML形式の本文
    public var renderedBody: String
    /// Markdown形式の本文
    public var body: String
    /// この記事が共同更新状態かどうか
    public var coediting: Bool
    /// この記事へのコメントの数
    public var commentsCount: Int
    /// データが作成された日時
    public var createdAt: Date
    /// Qiita:Teamのグループ
    public var group: Group?
    /// 記事の一意なID
    public var id: String
    /// この記事への「いいね！」の数
    public var likesCount: Int
    /// 限定共有状態かどうかを表すフラグ
    public var `private`: Bool
    /// 絵文字リアクションの数
    public var reactionsCount: Int
    /// 記事に付いたタグ一覧
    public var tags: [Tagging]
    /// 記事のタイトル
    public var title: String
    /// データが最後に更新された日時
    public var updatedAt: Date
    /// 記事のURL
    public var url: String
    /// Qiita上のユーザ
    public var user: User
    /// 閲覧数
    public var pageViewsCount: Int?
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
