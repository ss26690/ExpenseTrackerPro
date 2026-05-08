//
//  DashboardViewModel.swift
//  ExpenseTrackerPro
//
//  Created by Saurav Sagar on 08/05/26.
//

import SwiftUI
import Combine

final class DashboardViewModel: ObservableObject {

    @Published var totalBalance: Double = 24580

    @Published var monthlyExpense: Double = 8420

    @Published var categories: [ExpenseCategoryModel] = [

        ExpenseCategoryModel(
            title: "Food",
            amount: 2400,
            icon: "fork.knife",
            color: .orange
        ),

        ExpenseCategoryModel(
            title: "Travel",
            amount: 1800,
            icon: "airplane",
            color: .blue
        ),

        ExpenseCategoryModel(
            title: "Shopping",
            amount: 3200,
            icon: "bag.fill",
            color: .pink
        ),

        ExpenseCategoryModel(
            title: "Health",
            amount: 1020,
            icon: "heart.fill",
            color: .green
        )
    ]

    @Published var recentTransactions: [Transaction] = [

        Transaction(
            title: "Starbucks",
            category: "Food",
            amount: 12.50,
            date: "Today",
            icon: "cup.and.saucer.fill"
        ),

        Transaction(
            title: "Uber Ride",
            category: "Travel",
            amount: 24.00,
            date: "Yesterday",
            icon: "car.fill"
        ),

        Transaction(
            title: "Apple Store",
            category: "Shopping",
            amount: 199.00,
            date: "Yesterday",
            icon: "bag.fill"
        )
    ]
}
