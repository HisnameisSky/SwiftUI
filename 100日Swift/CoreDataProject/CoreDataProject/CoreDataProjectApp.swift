//
//  CoreDataProjectApp.swift
//  CoreDataProject
//
//  Created by 澄界 on 2025/07/25.
//

import SwiftUI

@main
struct CoreDataProjectApp: App {
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(
                    \.managedObjectContext,
                     dataController.container.viewContext
                )
        }
    }
}
