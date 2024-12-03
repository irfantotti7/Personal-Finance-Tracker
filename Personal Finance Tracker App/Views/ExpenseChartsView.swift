//
//  ExpenseChartsView.swift
//  Personal Finance Tracker App
//
//  Created by Irfan T on 03/12/24.
//

import SwiftUI
import Charts

struct ExpenseChartView: View {
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Expense.category, ascending: true)],
        animation: .default
    ) private var expenses: FetchedResults<Expense>

    var body: some View {
        Chart {
            ForEach(expenses) { expense in
                BarMark(
                    x: .value("Category", expense.category ?? "Other"),
                    y: .value("Amount", expense.amount)
                )
            }
        }
        .frame(height: 300)
        .padding()
    }
}
