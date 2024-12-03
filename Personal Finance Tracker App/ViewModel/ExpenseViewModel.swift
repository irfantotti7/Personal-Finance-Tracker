//
//  ExpenseViewModel.swift
//  Personal Finance Tracker App
//
//  Created by Irfan T on 03/12/24.
//

import SwiftUI

class ExpenseViewModel: ObservableObject {
    private let context = PersistenceController.shared.context
    
    func addExpense(amount: Double, category: String, date: Date, note: String?) {
        let newExpense = Expense(context: context)
        newExpense.id = UUID()
        newExpense.amount = amount
        newExpense.category = category
        newExpense.date = date
        newExpense.note = note
        save()
    }
    
    func save() {
        do {
            try? context.save()
        } catch {
            debugPrint("Error saving expense: \(error.localizedDescription)")
        }
    }
}
