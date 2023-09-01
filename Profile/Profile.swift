//
//  Profile.swift
//  TabMenuTest
//
//  Created by Sraavan Chevireddy on 25/08/23.
//

import SwiftUI

enum ProfileDestinations {
    case stepone
    case steptwo
}

struct Profile: View {
    @AppStorage("loggedIn") var isLoggedIn: Bool?
    var body: some View {
        VStack {
            Text("Profile!")
            NavigationLink(value: ProfileDestinations.stepone) {
                Text("Step One!")
            }
            Button {
                isLoggedIn = false
            } label: {
                Text("Logout!")
            }

        }.navigationTitle("Profile")
            .navigationDestination(for: ProfileDestinations.self) { _ in
                ProfileStepOne()
            }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
