//
//  BottomBarView.swift
//  frog_weather
//
//  Created by 김태훈 on 5/5/25.
//

import SwiftUI

struct BottomBarView: View {
    var onTap: () -> Void

    var body: some View {
        HStack {
            Text("알림 시간 선택")
            Spacer()
            Button(action: onTap) {
                Image(systemName: "bell.badge")
                    .font(.title2)
            }
        }
        .padding()
    }
}
