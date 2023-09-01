//
//  DashboardView.swift
//  TabMenuTest
//
//  Created by Sraavan Chevireddy on 25/08/23.
//

import SwiftUI

enum SelectedTab: Hashable {
    case home
    case profile
}

struct DashboardView: View {
    @EnvironmentObject var appNavigation: AppNavigation
    
    var body: some View {
        TabView(selection: $appNavigation.selectedTab) {
            NavigationStack(path: $appNavigation.homePath) {
                Home()
            }.tabItem {
                    Label("Home", systemImage: "house.fill")
            }.tag(SelectedTab.home)
            
            NavigationStack(path: $appNavigation.accountPath) {
                Profile()
            }.tabItem {
                    Label("Account", systemImage: "person.crop.circle")
                }.tag(SelectedTab.profile)
        }.toolbar(.visible, for: .navigationBar)
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
            .environmentObject(AppNavigation())
    }
}
