//
//  TabMenuTestApp.swift
//  TabMenuTest
//
//  Created by Sraavan Chevireddy on 25/08/23.
//

import SwiftUI

@main
struct TabMenuTestApp: App {
    @AppStorage("loggedIn") var isLoggedIn: Bool?
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    @StateObject private var appNavigation: AppNavigation = AppNavigation()

    var body: some Scene {
        WindowGroup {
            Group {
                if isLoggedIn ?? false {
                    DashboardView()
                } else {
                    ContentView()
                }
            }.environmentObject(appNavigation)
        }
    }
}
