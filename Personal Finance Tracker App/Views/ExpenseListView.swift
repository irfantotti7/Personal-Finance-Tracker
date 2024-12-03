//
//  ExpenseListView.swift
//  Personal Finance Tracker App
//
//  Created by Irfan T on 03/12/24.
//

import SwiftUI

struct ExpenseListView: View {
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Expense.date, ascending: false)],
        animation: .default
    ) private var expenses: FetchedResults<Expense>

    var body: some View {
        List {
            ForEach(expenses) { expense in
                HStack {
                    VStack(alignment: .leading) {
                        Text(expense.category ?? "Unknown")
                            .font(.headline)
                        Text(expense.note ?? "")
                            .font(.subheadline)
                    }
                    Spacer()
                    Text("$\(expense.amount, specifier: "%.2f")")
                        .bold()
                }
            }
        }
        .navigationTitle("Expenses")
    }
}
