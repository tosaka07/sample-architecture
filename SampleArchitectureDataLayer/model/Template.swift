//
//  Template.swift
//  SampleArchitectureDataLayer
//
//  Created by 坂上 翔悟 on 2019/01/12.
//  Copyright © 2019 tosaka.net. All rights reserved.
//

import Foundation

public struct Template {
    /// テンプレートの本文
    public var body: String
    /// テンプレートの一意なID
    public var id: Int
    /// テンプレートを判別するための名前
    public var name: String
    /// 変数を展開した状態の本文
    public var expandedBody: String
    /// 変数を展開した状態のタグ一覧
    public var expandedTags: [Tagging]
    /// 変数を展開した状態のタイトル
    public var expandedTitle: String
    /// タグ一覧
    public var tags: [Tagging]
    /// 生成される記事のタイトルの雛形
    public var title: String
}

extension Template: Codable {
    enum CodingKeys: String, CodingKey {
        case body
        case id
        case name
        case expandedBody = "expanded_body"
        case expandedTags = "expanded_tags"
        case expandedTitle = "expanded_title"
        case tags
        case title
    }
}
