//
//  CurrentWeather.swift
//  Sunny
//
//  Created by Слава Шестаков on 17.06.2022.


import Foundation

struct CurrentWeather {
    let cityName: String
    
    let temperature: Double
    var temperatureString: String {
        return "\(temperature.rounded())"
    }
    let feelsLikeTemperature: Double
    var feelsLikeTemperatureString: String {
        return "\(feelsLikeTemperature.rounded())"
    }
    let conditionCode: Int
    var systemIconNameString: String {
        switch conditionCode {
        case 200...232: return "cloud.bolt.rain.fill"
        default: break
        }
    }
    
    init?(currentWeatherData: CurrentWeatherData) {
        cityName = currentWeatherData.name
        temperature = currentWeatherData.main.temp
        feelsLikeTemperature = currentWeatherData.main.fellsLike
        conditionCode = currentWeatherData.weather.first!.id
    }
}
