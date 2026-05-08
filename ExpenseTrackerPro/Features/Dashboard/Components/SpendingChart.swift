//
//  SpendingChart.swift
//  ExpenseTrackerPro
//
//  Created by Saurav Sagar on 08/05/26.
//

import SwiftUI

struct SpendingChart: View {

    var body: some View {

        VStack(alignment: .leading, spacing: 20) {

            Text("Monthly Spending")
                .foregroundColor(.white)
                .font(.headline)

            RoundedRectangle(cornerRadius: 24)
                .fill(
                    LinearGradient(
                        colors: [
                            Color.blue.opacity(0.4),
                            Color.cyan.opacity(0.2)
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .frame(height: 220)
                .overlay {

                    Image(systemName: "chart.bar.xaxis")
                        .font(.system(size: 50))
                        .foregroundColor(.white.opacity(0.7))
                }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 28)
                .fill(Color.white.opacity(0.05))
        )
    }
}
