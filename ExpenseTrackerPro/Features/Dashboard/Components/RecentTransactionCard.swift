//
//  RecentTransactionCard.swift
//  ExpenseTrackerPro
//
//  Created by Saurav Sagar on 08/05/26.
//

import SwiftUI

struct RecentTransactionCard: View {

    let transaction: Transaction

    var body: some View {

        HStack(spacing: 16) {

            ZStack {

                Circle()
                    .fill(Color.white.opacity(0.08))
                    .frame(width: 50, height: 50)

                Image(systemName: transaction.icon)
                    .foregroundColor(.white)
            }

            VStack(alignment: .leading, spacing: 4) {

                Text(transaction.title)
                    .foregroundColor(.white)
                    .font(.headline)

                Text(transaction.category)
                    .foregroundColor(.gray)
                    .font(.subheadline)
            }

            Spacer()

            VStack(alignment: .trailing, spacing: 4) {

                Text("-$\(transaction.amount, specifier: "%.2f")")
                    .foregroundColor(.red)
                    .fontWeight(.semibold)

                Text(transaction.date)
                    .foregroundColor(.gray)
                    .font(.caption)
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 22)
                .fill(Color.white.opacity(0.05))
        )
    }
}
