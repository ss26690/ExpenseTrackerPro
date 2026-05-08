//
//  BalanceCard.swift
//  ExpenseTrackerPro
//
//  Created by Saurav Sagar on 08/05/26.
//

import SwiftUI

struct BalanceCard: View {

    let balance: Double
    let monthlyExpense: Double

    var body: some View {

        ZStack {

            RoundedRectangle(cornerRadius: 28)
                .fill(
                    LinearGradient(
                        colors: [
                            Color.blue.opacity(0.7),
                            Color.cyan.opacity(0.5)
                        ],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )

            VStack(alignment: .leading, spacing: 16) {

                Text("Total Balance")
                    .foregroundColor(.white.opacity(0.8))

                Text("$\(balance, specifier: "%.2f")")
                    .font(.system(size: 38, weight: .bold))
                    .foregroundColor(.white)

                Divider()
                    .overlay(.white.opacity(0.2))

                HStack {

                    VStack(alignment: .leading) {

                        Text("Monthly Expense")
                            .foregroundColor(.white.opacity(0.7))

                        Text("$\(monthlyExpense, specifier: "%.2f")")
                            .foregroundColor(.white)
                            .font(.headline)
                    }

                    Spacer()

                    Image(systemName: "waveform.path.ecg")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                }
            }
            .padding(24)
        }
        .frame(height: 220)
    }
}

#Preview {
    BalanceCard(balance: 400, monthlyExpense: 300)
}
