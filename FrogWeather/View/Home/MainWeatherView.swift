//
//  MainWeatherView.swift
//  frog_weather
//
//  Created by 김태훈 on 5/5/25.
//
import SwiftUI

struct MainWeatherView: View {
    @StateObject private var viewModel = WeatherViewModel()
    
    var body: some View {
        VStack {
            TopBarView(timeString: viewModel.currentTimeString, location: viewModel.location)
            
            if let current = viewModel.currentWeather {
                CurrentWeatherView(weather: current)
            }
            
            ForecastListView(forecast: viewModel.forecast)
            
            BottomBarView {
                // 알림 설정 액션
            }
        }
        .onAppear {
            viewModel.fetchWeather()
        }
    }
}

#Preview {
    MainWeatherView()
}
