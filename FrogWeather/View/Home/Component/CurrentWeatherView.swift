//
//  CurrentWeatherView.swift
//  frog_weather
//
//  Created by 김태훈 on 5/5/25.
//

import SwiftUI

struct CurrentWeatherView: View {
    let weather: WeatherModel

    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: weather.condition.iconName)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
            Text(weather.condition.description)
                .font(.title2)
            Text("\(Int(weather.temperature))°C")
                .font(.largeTitle)
        }
        .padding()
    }
}
