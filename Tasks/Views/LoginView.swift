//
//  LoginView.swift
//  Tasks
//
//  Created by 胡爽怡 on 9/15/24.
//

import SwiftUI

struct LoginView: View {
    
   @StateObject var  viewModel = LoginViewModel()
  
    
    var body: some View {
        NavigationView{
            VStack{
                //Header
                HeaderView(title: "土豆🥔List", subtitle: "Get things done", background: Color.pink, angle: 15)
                //Login form
                
                Form{
                    if !viewModel.errorMsg.isEmpty  {
                        Text(viewModel.errorMsg)
                            .foregroundColor(.red)
                    }
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                        .autocorrectionDisabled() 

                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TLButton(text: "Log in", color: Color.blue) {
                        viewModel.login() 
                     }
                    .padding()
                }
                .offset(y: -100)
                
                //Create Account
                Spacer()
                VStack{
                    Text("New account here?")
                    
                    NavigationLink("Create an account", destination: RegisterView())
                }
                .padding(.bottom, 50)
            }
        }
    }
}

#Preview {
    LoginView()
}
