//
//  BirthdaysApp.swift
//  Birthdays
//
//  Created by Mansi K on 05/11/24.
//

import SwiftUI
import SwiftData


@main
struct BirthdaysApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Friend.self)
        }
    }
}

