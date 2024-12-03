//
//  AddExpenseView.swift
//  Personal Finance Tracker App
//
//  Created by Irfan T on 03/12/24.
//
import SwiftUI

struct AddExpenseView: View {
    @StateObject private var viewModel = ExpenseViewModel()
    @State private var amount: String = ""
    @State private var category: String = ""
    @State private var date = Date()
    @State private var note: String = ""

    var body: some View {
        Form {
            Section(header: Text("Expense Details")) {
                TextField("Amount", text: $amount)
                    .keyboardType(.decimalPad)
                TextField("Category", text: $category)
                DatePicker("Date", selection: $date, displayedComponents: .date)
                TextField("Note", text: $note)
            }

            Button("Add Expense") {
                if let amountValue = Double(amount) {
                    viewModel.addExpense(amount: amountValue, category: category, date: date, note: note)
                }
            }
        }
        .navigationTitle("Add Expense")
    }
}

