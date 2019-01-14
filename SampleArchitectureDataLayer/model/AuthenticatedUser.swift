//
//  AuthenticatedUser.swift
//  SampleArchitectureDataLayer
//
//  Created by 坂上 翔悟 on 2019/01/12.
//  Copyright © 2019 tosaka.net. All rights reserved.
//

import Foundation

public struct AuthenticatedUser {
    /// 自己紹介文
    public var description: String?
    /// Facebook ID
    public var facebookId: String?
    /// このユーザがフォローしているユーザの数
    public var followeesCount: Int
    /// このユーザをフォローしているユーザの数
    public var followersCount: Int
    /// GitHub ID
    public var githubLoginName: String?
    /// ユーザID
    public var id: String
    /// このユーザが qiita.com 上で公開している記事の数 (Qiita:Teamでの記事数は含まれません)
    public var itemsCount: Int
    /// LinkedIn ID
    public var linkedinId: String?
    /// 居住地
    public var location: String?
    /// 設定している名前
    public var name: String?
    /// 所属している組織
    public var organization: String?
    /// ユーザごとに割り当てられる整数のID
    public var permanentId: Int
    /// 設定しているプロフィール画像のURL
    public var profileImageUrl: String
    /// Qiita:Team専用モードに設定されているかどうか
    public var teamOnly: Bool
    /// Twitterのスクリーンネーム
    public var twitterScreenName: String?
    /// 設定しているWebサイトのURL
    public var websiteUrl: String?
    /// 1ヶ月あたりにQiitaにアップロードできる画像の総容量
    public var imageMonthlyUploadLimit: Int
    /// その月にQiitaにアップロードできる画像の残りの容量
    public var imageMonthlyUploadRemaining: Int
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
