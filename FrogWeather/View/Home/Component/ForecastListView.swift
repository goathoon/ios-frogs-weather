//
//  ForecastListView.swift
//  frog_weather
//
//  Created by 김태훈 on 5/5/25.
//

import SwiftUI

struct ForecastListView: View {
    let forecast: [WeatherModel]

    var body: some View {
        ScrollView {
            VStack(spacing: 12) {
                ForEach(forecast) { weather in
                    ForecastRow(weather: weather)
                }
            }
            .padding(.horizontal)
        }
    }
}
