//
//  Template.swift
//  SampleArchitectureDataLayer
//
//  Created by 坂上 翔悟 on 2019/01/12.
//  Copyright © 2019 tosaka.net. All rights reserved.
//

import Foundation

struct Template {
    /// テンプレートの本文
    var body: String
    /// テンプレートの一意なID
    var id: Int
    /// テンプレートを判別するための名前
    var name: String
    /// 変数を展開した状態の本文
    var expandedBody: String
    /// 変数を展開した状態のタグ一覧
    var expandedTags: [Tagging]
    /// 変数を展開した状態のタイトル
    var expandedTitle: String
    /// タグ一覧
    var tags: [Tagging]
    /// 生成される記事のタイトルの雛形
    var title: String
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
