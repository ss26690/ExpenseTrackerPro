//
//  RootView.swift
//  ExpenseTrackerPro
//
//  Created by Saurav Sagar on 08/05/26.
//


import SwiftUI

struct RootView: View {
    
    @State private var showOnboarding = false
    
    var body: some View {
        
        if showOnboarding {
            OnboardingView()
        } else {
            SplashView(showOnboarding: $showOnboarding)
        }
    }
}

#Preview {
    RootView()
}