//
//  DeployedTemplate.swift
//  SampleArchitectureDataLayer
//
//  Created by 坂上 翔悟 on 2019/01/12.
//  Copyright © 2019 tosaka.net. All rights reserved.
//

import Foundation

public struct DeployedTemplate {
    public var expandedBody: String
    public var expandedTags: [Tagging]
    public var expandedTitle: String
}

extension DeployedTemplate: Codable {
    enum CodingKeys: String, CodingKey {
        case expandedBody = "expanded_body"
        case expandedTags = "expanded_tags"
        case expandedTitle = "expanded_title"
    }
}
