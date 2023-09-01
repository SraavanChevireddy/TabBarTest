//
//  ContentView.swift
//  TabMenuTest
//
//  Created by Sraavan Chevireddy on 25/08/23.
//

import SwiftUI

enum SignInDestinations: Hashable {
    case signIn
    case signUp
    case moveToDashboard
}

struct ContentView: View {
    @State var path = NavigationPath()
    @State var destination: SignInDestinations?
    @AppStorage("loggedIn") var isLoggedIn: Bool?
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack(spacing: 16) {
                Text("Welcome!!")
                    .font(.largeTitle)
                NavigationLink(value: SignInDestinations.signIn) {
                    Text("SignIn")
                        .foregroundColor(.black)
                        .font(.largeTitle)
                        .padding()
                        .padding(.horizontal, 20)
                        .background(Color.yellow)
                        .clipShape(Capsule())
                        .shadow(radius: 4)
                }
                
                NavigationLink(value: SignInDestinations.signUp) {
                    Text("SignUp")
                        .foregroundColor(.black)
                        .font(.largeTitle)
                        .underline(color: Color.black)
                        .shadow(radius: 1)
                }
            }
            .navigationDestination(for: SignInDestinations.self) {
                switch $0 {
                case .signIn: SignInView()
                case .signUp: SignUpView()
                case .moveToDashboard:
                    DashboardView()
                }
            }
            .navigationTitle("OnBoarding")
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    Text("Create an Account")
                        .font(.system(.title, design: .rounded, weight: .bold))
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
