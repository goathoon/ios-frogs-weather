//
//  TopBarView.swift
//  frog_weather
//
//  Created by 김태훈 on 5/5/25.
//

import SwiftUI

struct TopBarView: View {
    let timeString: String
    let location: String

    var body: some View {
        HStack {
            Text(timeString)
                .font(.subheadline)
            Spacer()
            Text(location)
                .font(.subheadline)
        }
        .padding(.horizontal)
    }
}
