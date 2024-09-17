//
//  TasksApp.swift
//  Tasks
//
//  Created by 胡爽怡 on 9/15/24.
//

import SwiftUI
import FirebaseCore


@main
struct TasksApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
