//
//  AuthenticatedUser.swift
//  SampleArchitectureDataLayer
//
//  Created by 坂上 翔悟 on 2019/01/12.
//  Copyright © 2019 tosaka.net. All rights reserved.
//

import Foundation

struct AuthenticatedUser {
    /// 自己紹介文
    var description: String?
    /// Facebook ID
    var facebookId: String?
    /// このユーザがフォローしているユーザの数
    var followeesCount: Int
    /// このユーザをフォローしているユーザの数
    var followersCount: Int
    /// GitHub ID
    var githubLoginName: String?
    /// ユーザID
    var id: String
    /// このユーザが qiita.com 上で公開している記事の数 (Qiita:Teamでの記事数は含まれません)
    var itemsCount: Int
    /// LinkedIn ID
    var linkedinId: String?
    /// 居住地
    var location: String?
    /// 設定している名前
    var name: String?
    /// 所属している組織
    var organization: String?
    /// ユーザごとに割り当てられる整数のID
    var permanentId: Int
    /// 設定しているプロフィール画像のURL
    var profileImageUrl: String
    /// Qiita:Team専用モードに設定されているかどうか
    var teamOnly: Bool
    /// Twitterのスクリーンネーム
    var twitterScreenName: String?
    /// 設定しているWebサイトのURL
    var websiteUrl: String?
    /// 1ヶ月あたりにQiitaにアップロードできる画像の総容量
    var imageMonthlyUploadLimit: Int
    /// その月にQiitaにアップロードできる画像の残りの容量
    var imageMonthlyUploadRemaining: Int
}

extension AuthenticatedUser: Codable {
    enum CodingKeys: String, CodingKey {
        case description
        case facebookId = "facebook_id"
        case followeesCount = "followees_count"
        case followersCount = "followers_count"
        case githubLoginName = "github_login_name"
        case id
        case itemsCount = "items_count"
        case linkedinId = "linkedin_id"
        case location
        case name
        case organization
        case permanentId = "permanent_id"
        case profileImageUrl = "profile_image_url"
        case teamOnly = "team_only"
        case twitterScreenName = "twitter_screen_name"
        case websiteUrl = "website_url"
        case imageMonthlyUploadLimit = "image_monthly_upload_limit"
        case imageMonthlyUploadRemaining = "image_monthly_upload_remaining"
    }
}
