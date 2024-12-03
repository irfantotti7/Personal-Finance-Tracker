//
//  ContentView.swift
//  Personal Finance Tracker App
//
//  Created by Irfan T on 03/12/24.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        TabView {
            ExpenseListView()
                .tabItem {
                    Label("Expenses", systemImage: "list.dash")
                }
            AddExpenseView()
                .tabItem {
                    Label("Add Expense", systemImage: "plus.circle")
                }
            ExpenseChartView()
                .tabItem {
                    Label("Charts", systemImage: "chart.bar.fill")
                }
        }
    }
}

