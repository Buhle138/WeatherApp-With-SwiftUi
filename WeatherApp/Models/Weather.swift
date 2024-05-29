//
//  Weather.swift
//  WeatherApp
//
//  Created by Buhle Radzilani on 2024/05/29.
//

import Foundation

struct WeatherResponse: Decodable{
    let main: Weather
}

struct Weather: Decodable{
    let temp: Double
}
