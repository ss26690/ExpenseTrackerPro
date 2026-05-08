//
//  OnboardingCardView.swift
//  ExpenseTrackerPro
//
//  Created by Saurav Sagar on 08/05/26.
//

import SwiftUI

struct OnboardingCardView: View {

    let item: OnboardingItem

    var body: some View {
        VStack(spacing: 30) {

            Spacer()

            ZStack {

                Circle()
                    .fill(
                        AppGradients.primary
                    )
                    .frame(width: 220, height: 220)
                    .blur(radius: 40)

                Image(systemName: item.image)
                    .font(.system(size: 90))
                    .foregroundColor(.white)
            }

            VStack(spacing: 12) {

                Text(item.title)
                    .font(.largeTitle.bold())
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)

                Text(item.subtitle)
                    .font(.body)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
            }

            Spacer()
        }
    }
}
