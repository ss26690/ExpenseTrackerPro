//
//  Expense.swift
//  ExpenseTrackerPro
//
//  Created by Saurav Sagar on 08/05/26.
//

import Foundation


struct Expense {
    let id: UUID
    let title: String
    let amount: Double
    let category: ExpenseCategory
    let date: Date
    let note: String
}

enum ExpenseCategory: String, CaseIterable {
    case food
    case travel
    case shopping
    case health
    case bills
}
