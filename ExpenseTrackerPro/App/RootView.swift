//
//  RootView.swift
//  ExpenseTrackerPro
//
//  Created by Saurav Sagar on 08/05/26.
//


import SwiftUI

struct RootView: View {

    @State private var showSplash = true

    @AppStorage("hasSeenOnboarding")
    private var hasSeenOnboarding = false

    var body: some View {

        Group {

            if showSplash {

                SplashView(showSplash: $showSplash)

            } else {

                if hasSeenOnboarding {

                    DashboardView()

                } else {

                    OnboardingView()
                }
            }
        }
    }
}

#Preview {
    RootView()
}
