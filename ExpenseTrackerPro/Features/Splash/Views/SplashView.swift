//
//  SplashView.swift
//  ExpenseTrackerPro
//
//  Created by Saurav Sagar on 08/05/26.
//


import SwiftUI

struct SplashView: View {

    @Binding var showSplash: Bool

    @State private var logoScale: CGFloat = 0.8
    @State private var logoOpacity = 0.0
    @State private var glowOpacity = 0.3
    @State private var subtitleOpacity = 0.0

    var body: some View {

        ZStack {

            // MARK: - Background
            LinearGradient(
                colors: [
                    Color.black,
                    Color(red: 0.05, green: 0.07, blue: 0.15)
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            // MARK: - Glow Effects
            Circle()
                .fill(Color.blue.opacity(0.25))
                .frame(width: 250, height: 250)
                .blur(radius: 80)
                .offset(x: -120, y: -180)
                .opacity(glowOpacity)

            Circle()
                .fill(Color.cyan.opacity(0.2))
                .frame(width: 220, height: 220)
                .blur(radius: 90)
                .offset(x: 140, y: 220)
                .opacity(glowOpacity)

            // MARK: - Main Content
            VStack(spacing: 20) {

                ZStack {

                    Circle()
                        .fill(
                            LinearGradient(
                                colors: [
                                    Color.blue.opacity(0.8),
                                    Color.cyan.opacity(0.6)
                                ],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .frame(width: 120, height: 120)
                        .shadow(color: .blue.opacity(0.5), radius: 20)

                    Image(systemName: "chart.line.uptrend.xyaxis")
                        .font(.system(size: 45, weight: .bold))
                        .foregroundColor(.white)
                }
                .scaleEffect(logoScale)
                .opacity(logoOpacity)

                Text("ExpenseTrackerPro")
                    .font(.system(size: 34, weight: .bold))
                    .foregroundColor(.white)
                    .opacity(logoOpacity)

                Text("Track smarter. Spend better.")
                    .font(.system(size: 16, weight: .medium))
                    .foregroundColor(.gray)
                    .opacity(subtitleOpacity)
            }
        }
        .onAppear {

            // MARK: - Logo Animation
            withAnimation(.easeOut(duration: 1.2)) {
                logoScale = 1.0
                logoOpacity = 1.0
            }

            // MARK: - Subtitle Animation
            withAnimation(.easeIn(duration: 1.0).delay(0.8)) {
                subtitleOpacity = 1.0
            }

            // MARK: - Glow Animation
            withAnimation(
                .easeInOut(duration: 2)
                .repeatForever(autoreverses: true)
            ) {
                glowOpacity = 0.7
            }

            // MARK: - Navigation
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {

                withAnimation {
                    showSplash = false
                }
            }
        }
    }
}

#Preview {
    SplashView(showSplash: .constant(true))
}
