//
//  LoginViewModel.swift
//  Tasks
//
//  Created by 胡爽怡 on 9/15/24.
//

import Foundation
import FirebaseAuth

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMsg = ""
    
    init(){}
    
    func login() {
        guard validate() else {
            return
        }
        
        //try login
        Auth.auth().signIn(withEmail:  email, password: password)
    }
    
    private func validate()-> Bool{
        errorMsg = ""
        
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
                !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMsg = "❌ Please fill in all fields."
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMsg = "❌ Please enter valid email."
            return false
        }
        
        return true
    }
}
