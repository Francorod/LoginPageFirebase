//
//  ContentView.swift
//  LoginPageFirebase
//
//  Created by Franco Rodrigues on 6/23/22.
//

import SwiftUI

struct LoginView: View {
    @State var isLoginMode = false
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                
                VStack(spacing: 16) {
                    Picker(selection: $isLoginMode, label:
                        Text("Picker here")) {
                        Text("Login")
                            .tag(true)
                        Text("Create Account")
                            .tag(false)
                    }.pickerStyle(SegmentedPickerStyle())
                    
                    if !isLoginMode {
                        Button {
                            
                        } label: {
                            Image(systemName: "person.fill")
                                .font(.system(size: 64))
                                .padding()
                            
                        }
                        
                    }
                
                    
                    TextField("Email", text: $email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .padding(12)
                        .background(Color.white)
                    SecureField("Password", text: $password)
                        .padding(12)
                        .background(Color.white)
                    
                    Button {
                        //action
                        handleAction()
                    } label: {
                        HStack {
                            Spacer()
                            Text(isLoginMode ? "Log In" : "Create Account")
                                .foregroundColor(.white)
                                .padding(.vertical, 10)
                            Spacer()
                        }.background(Color.blue)
                    }
                }
                .padding()
                .background(Color(.init(white: 0, alpha: 0.05)))
            }
            .navigationTitle(isLoginMode ? "Log In" : "Create Account")
        }
    }
    private func handleAction() {
        if isLoginMode {
            print("You're logged")
        } else {
            print("Register to see our content")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
