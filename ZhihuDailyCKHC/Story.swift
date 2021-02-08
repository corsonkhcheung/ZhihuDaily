//
//  File.swift
//  ZhihuDailyCKHC
//
//  Created by CHEUNG Kog-hin Corson on 2021/2/1.
//

import Foundation

struct Story: Decodable {
    
    var storyTitle = ""
    var storyImage = ""
    var storyId = ""
    var date = Date()
    
    enum CodingKeys: String, CodingKey {
        
        case stories
        case date
        
        case storyTitle = "title"
        case storyImage = "images"
        case storyId = "id"
    }
    
    init (from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let storyContainer = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .stories)
        
        self.date = try container.decode(Date.self, forKey: .date)
        self.storyTitle = try storyContainer.decode(String.self, forKey: .storyTitle)
        self.storyImage = try storyContainer.decode(String.self, forKey: .storyImage)
        
    }
}
