//
//  Model.swift
//  ZhihuDailyCKHC
//
//  Created by CHEUNG Kog-hin Corson on 2021/2/2.
//

import Foundation

class Model {
    
    func getStory() {
        
        // create a URL object
        let url = URL(string: Constants.LATEST_NEWS)
        guard url != nil else { return }
        
        // get a URLSession object
        let session = URLSession.shared
        
        // get a data task from the URLSession object
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            if error != nil || data == nil { return }
            
            let converter = DateFormatter()
            converter.dateFormat = "yyyymmdd"
            do {
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .formatted(converter)
                let response = try decoder.decode(Response.self, from: data!)
                dump(response)
            } catch {}
        }
        dataTask.resume()
    }
}
