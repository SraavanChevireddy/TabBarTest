//
//  SignInView.swift
//  TabMenuTest
//
//  Created by Sraavan Chevireddy on 25/08/23.
//

import SwiftUI

struct SignInView: View {
    @State private var destination: SignInDestinations?
    @AppStorage("loggedIn") var isLoggedIn: Bool?
    
    var body: some View {
        VStack {
            Text("Username")
            Text("Password")
            Button {
                isLoggedIn = true
                destination = .moveToDashboard
            } label: {
                Text("Login")
            }
        }.font(.largeTitle)
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
