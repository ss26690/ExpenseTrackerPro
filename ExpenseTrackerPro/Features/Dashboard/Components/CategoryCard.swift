//
//  CategoryCard.swift
//  ExpenseTrackerPro
//
//  Created by Saurav Sagar on 08/05/26.
//

import SwiftUI

struct CategoryCard: View {

    let category: ExpenseCategoryModel

    var body: some View {

        VStack(alignment: .leading, spacing: 14) {

            Image(systemName: category.icon)
                .font(.title2)
                .foregroundColor(category.color)

            Spacer()

            Text(category.title)
                .foregroundColor(.white)
                .font(.headline)

            Text("$\(category.amount, specifier: "%.0f")")
                .foregroundColor(.gray)
        }
        .padding()
        .frame(width: 140, height: 140)
        .background(
            RoundedRectangle(cornerRadius: 24)
                .fill(Color.white.opacity(0.05))
        )
    }
}
