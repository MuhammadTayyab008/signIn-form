//
//  ContentView.swift
//  user data form
//
//  Created by developer on 2024-08-23.
//

import SwiftUI

struct ContentView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            TextField("user name", text: $firstName)
                .padding()
                .frame(width: 200, height: 40)
                .overlay(
                    RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color.black, style: StrokeStyle(lineWidth: 1.0))
                )
            
            TextField("user name", text: $lastName)
                .padding()
                .frame(width: 200, height: 40)
                .overlay(
                    RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color.black, style: StrokeStyle(lineWidth: 1.0))
                )
            
            TextField("user name", text: $email)
                .padding()
                .frame(width: 200, height: 40)
                .overlay(
                    RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color.black, style: StrokeStyle(lineWidth: 1.0))
                )
            
            TextField("user name", text: $password)
                .padding()
                .frame(width: 200, height: 40)
                .overlay(
                    RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color.black, style: StrokeStyle(lineWidth: 1.0))
                )
            HStack {
                Button(action:
                        {print("button pressed")},
                       label: {
                    Text("Cancel")
                    
                })
                Spacer()
                
                Button(action:
                        {print("button pressed")},
                       label: {
                    Text("Sign in")
                    
                    
                })
                .padding(.leading)
            }
            .frame(width: 200, height: 40)
            
        }
        
    }
}

#Preview {
    ContentView()
}
