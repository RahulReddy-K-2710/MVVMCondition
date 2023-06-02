//
//  WeatherViewModel.swift
//  Condition
//
//  Created by Roja on 21/11/22.
//

import Foundation

struct WeatherViewModel {
    
    func getWeather(Completion: (WeatherModel) -> Void) {
        WeatherDataManager().getWeatherData { Weather in
            Completion(Weather)
        }
    }
}
