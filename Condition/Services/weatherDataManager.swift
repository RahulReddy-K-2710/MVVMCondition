//
//  weatherDataManager.swift
//  Condition
//
//  Created by Roja on 21/11/22.
//

import Foundation

struct WeatherDataManager {
    
    func getWeatherData(Completion: (WeatherModel) -> Void) {
        NetworkManager().downloadDataFromURL { json in
            guard let temprature = json["temparature"] as? Int,
                    let cityName = json["cityName"] as? String,
                    let description = json["description"] as? String else { return }
            let weather = WeatherModel(temprature: temprature, cityName: cityName, description: description)
            Completion(weather)
        }
    }
}
