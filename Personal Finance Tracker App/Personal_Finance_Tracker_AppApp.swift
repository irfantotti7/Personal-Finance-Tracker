//
//  Personal_Finance_Tracker_AppApp.swift
//  Personal Finance Tracker App
//
//  Created by Irfan T on 03/12/24.
//

import SwiftUI

@main
struct Personal_Finance_Tracker_AppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
