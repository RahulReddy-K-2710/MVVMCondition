//
//  WeatherNetworkManager.swift
//  Condition
//
//  Created by Roja on 21/11/22.
//

import Foundation

struct NetworkManager {
    
    typealias Completion = ([String: Any]) -> Void
    
    func downloadDataFromURL(completion: Completion) {
        let json: [String: Any] = ["temparature": 23,
                                   "cityName": "Mumbai",
                                   "description": "Cloudy"]
        completion(json)
    }
}
