//
//  DashboardView.swift
//  ExpenseTrackerPro
//
//  Created by Saurav Sagar on 08/05/26.
//

import SwiftUI

struct DashboardView: View {

    @StateObject
    private var viewModel = DashboardViewModel()

    var body: some View {

        ZStack(alignment: .bottomTrailing) {

            Color.black
                .ignoresSafeArea()

            ScrollView(showsIndicators: false) {

                VStack(spacing: 28) {

                    headerSection

                    BalanceCard(
                        balance: viewModel.totalBalance,
                        monthlyExpense: viewModel.monthlyExpense
                    )

                    SpendingChart()

                    categorySection

                    recentTransactionSection
                }
                .padding()
            }

            floatingButton
        }
    }
}

#Preview {
    DashboardView()
}

extension DashboardView {

    private var headerSection: some View {

        HStack {

            VStack(alignment: .leading, spacing: 6) {

                Text("Welcome Back")
                    .foregroundColor(.gray)

                Text("Saurav 👋")
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)
            }

            Spacer()

            Image(systemName: "bell.badge.fill")
                .font(.title2)
                .foregroundColor(.white)
        }
    }

    private var categorySection: some View {

        VStack(spacing: 18) {

            SectionHeader(
                title: "Categories",
                actionTitle: "View All"
            )

            ScrollView(.horizontal, showsIndicators: false) {

                HStack(spacing: 16) {

                    ForEach(viewModel.categories) { category in

                        CategoryCard(category: category)
                    }
                }
            }
        }
    }

    private var recentTransactionSection: some View {

        VStack(spacing: 18) {

            SectionHeader(
                title: "Recent Transactions",
                actionTitle: "See All"
            )

            VStack(spacing: 14) {

                ForEach(viewModel.recentTransactions) { transaction in

                    RecentTransactionCard(
                        transaction: transaction
                    )
                }
            }
        }
    }

    private var floatingButton: some View {

        Button {

        } label: {

            Image(systemName: "plus")
                .font(.title2.bold())
                .foregroundColor(.white)
                .frame(width: 65, height: 65)
                .background(
                    LinearGradient(
                        colors: [
                            Color.blue,
                            Color.cyan
                        ],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .clipShape(Circle())
                .shadow(color: .blue.opacity(0.5), radius: 15)
        }
        .padding()
    }
}
