//
//  Team.swift
//  SampleArchitectureDataLayer
//
//  Created by 坂上 翔悟 on 2019/01/12.
//  Copyright © 2019 tosaka.net. All rights reserved.
//

import Foundation

struct Team {
    /// チームが利用可能な状態かどうか
    var active: Bool
    /// チームの一意なID
    var id: String
    /// チームに設定されている名前
    var name: String
}

extension Team: Codable {
    enum CodingKeys: String, CodingKey {
        case active
        case id
        case name
    }
}
