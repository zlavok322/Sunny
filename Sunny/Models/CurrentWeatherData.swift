//
//  CurrentWeatherData.swift
//  Sunny
//
//  Created by Слава Шестаков on 17.06.2022.


import Foundation

struct CurrentWeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
    let fellsLike: Double
    
    enum CodingKeys: String, CodingKey {
        case temp
        case fellsLike = "feels_like"
    }
}

struct Weather: Codable {
    let id: Int
}
