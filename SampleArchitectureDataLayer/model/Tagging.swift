//
//  Tagging.swift
//  SampleArchitectureDataLayer
//
//  Created by 坂上 翔悟 on 2019/01/12.
//  Copyright © 2019 tosaka.net. All rights reserved.
//

import Foundation

struct Tagging {
    /// タグを特定するための一意な名前
    var name: String
    /// versions
    var versions: [String]
}

extension Tagging: Codable {
    enum CodingKeys: String, CodingKey {
        case name
        case versions
    }
}
