//
//  PrimaryButton.swift
//  ExpenseTrackerPro
//
//  Created by Saurav Sagar on 08/05/26.
//


import SwiftUI

struct PrimaryButton: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(AppGradients.primary)
                .cornerRadius(18)
        }
    }
}