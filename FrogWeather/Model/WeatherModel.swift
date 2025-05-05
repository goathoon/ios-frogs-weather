//
//  Weather.swift
//  frog_weather
//
//  Created by 김태훈 on 5/5/25.
//

import Foundation

struct WeatherModel: Identifiable {
    let id = UUID()
    let date: Date
    let temperature: Double
    let condition: WeatherCondition
}
