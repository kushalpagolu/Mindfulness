//
//  MindfulnessApp.swift
//  Mindfulness
//
//  Created by Kushal P on 1/17/21.
//

import SwiftUI

@main
struct MindfulnessApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
