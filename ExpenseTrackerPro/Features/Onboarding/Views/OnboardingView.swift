//
//  OnboardingView.swift
//  ExpenseTrackerPro
//
//  Created by Saurav Sagar on 08/05/26.
//


import SwiftUI

struct OnboardingView: View {

    @State private var currentIndex = 0

    @AppStorage("hasSeenOnboarding")
    var hasSeenOnboarding = false

    var body: some View {

        ZStack {

            AppColors.background
                .ignoresSafeArea()

            VStack {

                HStack {

                    Spacer()

                    Button("Skip") {
                        hasSeenOnboarding = true
                    }
                    .foregroundColor(.gray)
                }
                .padding()

                TabView(selection: $currentIndex) {

                    ForEach(
                        Array(onboardingItems.enumerated()),
                        id: \.offset
                    ) { index, item in

                        OnboardingCardView(item: item)
                            .tag(index)
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .never))

                HStack(spacing: 10) {

                    ForEach(0..<onboardingItems.count, id: \.self) { index in

                        Capsule()
                            .fill(
                                currentIndex == index
                                ? Color.white
                                : Color.gray.opacity(0.4)
                            )
                            .frame(
                                width: currentIndex == index ? 24 : 8,
                                height: 8
                            )
                            .animation(.smooth, value: currentIndex)
                    }
                }
                .padding(.bottom, 20)

                PrimaryButton(
                    title: currentIndex == 2
                    ? "Get Started"
                    : "Next"
                ) {

                    if currentIndex < 2 {

                        withAnimation(.smooth) {
                            currentIndex += 1
                        }

                    } else {
                        hasSeenOnboarding = true
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    OnboardingView()
}
