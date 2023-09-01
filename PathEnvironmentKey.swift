//
//  PathEnvironmentKey.swift
//  TabMenuTest
//
//  Created by Sraavan Chevireddy on 25/08/23.
//

import SwiftUI

struct NavPath: EnvironmentKey {
    static let defaultValue: NavigationPath = NavigationPath()
}

extension EnvironmentValues {
    var path: NavigationPath {
        get { self[NavPath.self] }
        set { self[NavPath.self] = newValue }
    }
}
