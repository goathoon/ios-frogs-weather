//
//  WeatherCondition.swift
//  frog_weather
//
//  Created by 김태훈 on 5/5/25.
//

import Foundation

enum WeatherCondition: String, Codable, CaseIterable {
    case sunny
    case cloudy
    case rainy
    case snowy
    case thunder
    case fog
    
    var iconName: String {
        switch self {
        case .sunny: return "sun.max.fill"
        case .cloudy: return "cloud.fill"
        case .rainy: return "cloud.rain.fill"
        case .snowy: return "snow"
        case .thunder: return "cloud.bolt.rain.fill"
        case .fog: return "cloud.fog.fill"
        }
    }
    
    var description: String {
        switch self {
        case .sunny: return "맑음"
        case .cloudy: return "흐림"
        case .rainy: return "비"
        case .snowy: return "눈"
        case .thunder: return "천둥"
        case .fog: return "안개"
        }
    }
}
