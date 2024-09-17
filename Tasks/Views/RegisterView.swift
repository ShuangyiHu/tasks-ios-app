//
//  RegisterView.swift
//  Tasks
//
//  Created by 胡爽怡 on 9/15/24.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterViewModel()
    var body: some View {
        VStack{
            //Header
            HeaderView(title: "Register", subtitle: "Start organizing todos", background: Color.orange, angle: -15)
            
            
            //Register form
            Form{
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()

                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TLButton(text: "Create account", color: Color.green)
                {
                    viewModel.register()
                }
                .padding()
            }
            .offset(y: -100)
            Spacer()
        }
        
    }
}

#Preview {
    RegisterView()
}
