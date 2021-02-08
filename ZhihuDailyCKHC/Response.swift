//
//  Response.swift
//  ZhihuDailyCKHC
//
//  Created by CHEUNG Kog-hin Corson on 2021/2/2.
//

import Foundation

struct Response: Decodable {
    
    var items: [Story]?
    
    enum CodingKeys: String, CodingKey {
        case stories
    }
    
    init (from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.items = try container.decode([Story].self, forKey: .stories)
    }
}
