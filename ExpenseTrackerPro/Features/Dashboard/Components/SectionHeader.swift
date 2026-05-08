//
//  SectionHeader.swift
//  ExpenseTrackerPro
//
//  Created by Saurav Sagar on 08/05/26.
//

import SwiftUI

struct SectionHeader: View {

    let title: String
    let actionTitle: String

    var body: some View {

        HStack {

            Text(title)
                .font(.title3.bold())
                .foregroundColor(.white)

            Spacer()

            Button(actionTitle) {

            }
            .foregroundColor(.blue)
        }
    }
}
