
//
//  ContentView.swift
//  user data form
//
//  Created by developer on 2024-08-23.
//

struct UserData: Identifiable {
    let id = UUID()
    let firstName: String
    let lastName: String
    let email: String
    //    let password: String
}

import SwiftUI

struct ContentView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    //    @State private var password = ""
    @State private var users: [UserData] = []
    @State private var navigateToNextPage = false
    @State private var showError = false
    var body: some View {
        NavigationStack {
            VStack {
                Text("Welcome")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                TextField("First Name", text: $firstName)
                    .padding()
                    .frame(width: 200, height: 40)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color.black, style: StrokeStyle(lineWidth: 1.0))
                    )
                
                TextField("Last Name", text: $lastName)
                    .padding()
                    .frame(width: 200, height: 40)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color.black, style: StrokeStyle(lineWidth: 1.0))
                    )
                
                TextField("Email", text: $email)
                    .padding()
                    .frame(width: 200, height: 40)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color.black, style: StrokeStyle(lineWidth: 1.0))
                    )
                
                //                SecureField("Password", text: $password)
                //                    .padding()
                //                    .frame(width: 200, height: 40)
                //                    .overlay(
                //                        RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color.black, style: StrokeStyle(lineWidth: 1.0))
                //                    )
                
                if showError {
                    Text("Please fill out all fields")
                        .foregroundColor(.red)
                        .padding(.top)
                }
                
                HStack {
                    Button(action: {
                        if !firstName.isEmpty && !lastName.isEmpty && !email.isEmpty {
                            let newUser = UserData(firstName: firstName, lastName: lastName, email: email)
                            users.append(newUser)
                            firstName = ""
                            lastName = ""
                            email = ""
                            
                            showError = false
                        } else {
                            showError = true
                        }
                        
                    }) {
                        Text("save")
                    }
                    
                    Spacer()
                    
                    NavigationLink(destination: nextView(users: users)) {
                        
                        Text("Next")
                    }
                    
                    .padding(.leading)
                }
                .frame(width: 200, height: 40)
            }
            .padding()
        }
    }
}

struct NextView: View {
    let users: [UserData]
    
    var body: some View {
        VStack {
            Text("Users List")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            List(users) { user in
                VStack(alignment: .leading) {
                    Text("First Name: \(user.firstName)")
                    Text("Last Name: \(user.lastName)")
                    Text("Email: \(user.email)")
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
