//
//  Transaction.swift
//  ExpenseTrackerPro
//
//  Created by Saurav Sagar on 08/05/26.
//

import Foundation

struct Transaction: Identifiable {

    let id = UUID()

    let title: String
    let category: String
    let amount: Double
    let date: String
    let icon: String
}
