//
//  WeatherViewModel.swift
//  frog_weather
//
//  Created by 김태훈 on 5/5/25.
//

import Foundation

class WeatherViewModel: ObservableObject {
    @Published var currentWeather: WeatherModel?
    @Published var forecast: [WeatherModel] = []
    @Published var location: String = "서울"
    
    private let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM월 dd일 HH시 기준"
        return formatter
    }()
    
    var currentTimeString: String {
        guard let date = currentWeather?.date else { return "—" }
        return dateFormatter.string(from: date)
    }

    func fetchWeather() {
        // 임시 샘플 데이터
        let now = Date()
        currentWeather = WeatherModel(date: now, temperature: 18.2, condition: .sunny)
        
        forecast = [
            WeatherModel(date: now.addingTimeInterval(86400), temperature: 20.1, condition: .cloudy),
            WeatherModel(date: now.addingTimeInterval(86400 * 2), temperature: 17.4, condition: .rainy),
            WeatherModel(date: now.addingTimeInterval(86400 * 3), temperature: 12.5, condition: .snowy)
        ]
    }
}
