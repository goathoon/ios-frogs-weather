//
//  ForecastRow.swift
//  frog_weather
//
//  Created by 김태훈 on 5/5/25.
//

import SwiftUI

struct ForecastRow: View {
    let weather: WeatherModel
    private let formatter: DateFormatter = {
        let f = DateFormatter()
        f.dateFormat = "MM/dd (E)"
        return f
    }()
    
    var body: some View {
        HStack {
            Image(systemName: weather.condition.iconName)
                .frame(width: 40)
            VStack(alignment: .leading) {
                Text(formatter.string(from: weather.date))
                Text(weather.condition.description)
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            Spacer()
            Text("\(Int(weather.temperature))°C")
        }
    }
}
