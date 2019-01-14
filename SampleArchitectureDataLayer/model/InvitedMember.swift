//
//  InvitedMember.swift
//  SampleArchitectureDataLayer
//
//  Created by 坂上 翔悟 on 2019/01/12.
//  Copyright © 2019 tosaka.net. All rights reserved.
//

import Foundation

public struct InvitedMember {
    /// 招待中のメンバーのemailアドレス
    public var email: String
    /// 招待用URL
    public var url: String
}

extension InvitedMember: Codable {
    enum CodingKeys: String, CodingKey {
        case email
        case url
    }
}
