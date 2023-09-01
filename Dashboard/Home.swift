//
//  Home.swift
//  TabMenuTest
//
//  Created by Sraavan Chevireddy on 25/08/23.
//

import SwiftUI

enum HomeDestinations {
    case stepone
    case steptwo
}

struct Home: View {
    var body: some View {
        VStack {
            Text("Home!!")
                .navigationTitle("Home")
            NavigationLink(value: HomeDestinations.stepone) {
                Text("Step One!")
            }
        }.toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Text("Hi")
            }
        }
        .navigationDestination(for: HomeDestinations.self) { _ in
            HomeStepOne()
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
