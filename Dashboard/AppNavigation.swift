//
//  AppNavigation.swift
//  TabMenuTest
//
//  Created by Sraavan Chevireddy on 30/08/23.
//

import Foundation
import SwiftUI

class AppNavigation: ObservableObject {
    @Published var unAuthenticatedPath = NavigationPath()
    @Published var homePath = NavigationPath()
    @Published var accountPath = NavigationPath()
    
    @Published var selectedTab: SelectedTab = .home
}
