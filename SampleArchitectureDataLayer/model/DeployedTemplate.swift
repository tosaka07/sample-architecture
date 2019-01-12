//
//  DeployedTemplate.swift
//  SampleArchitectureDataLayer
//
//  Created by 坂上 翔悟 on 2019/01/12.
//  Copyright © 2019 tosaka.net. All rights reserved.
//

import Foundation

struct DeployedTemplate {
    var expandedBody: String
    var expandedTags: [Tagging]
    var expandedTitle: String
}

extension DeployedTemplate: Codable {
    enum CodingKeys: String, CodingKey {
        case expandedBody = "expanded_body"
        case expandedTags = "expanded_tags"
        case expandedTitle = "expanded_title"
    }
}
