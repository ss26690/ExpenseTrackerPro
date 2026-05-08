//
//  ExpenseCategory.swift
//  ExpenseTrackerPro
//
//  Created by Saurav Sagar on 08/05/26.
//

import SwiftUI

struct ExpenseCategoryModel: Identifiable {

    let id = UUID()

    let title: String
    let amount: Double
    let icon: String
    let color: Color
}
