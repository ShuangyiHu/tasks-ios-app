//
//  RegisterViewModel.swift
//  Tasks
//
//  Created by 胡爽怡 on 9/15/24.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore
class RegisterViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var name = ""

    @Published var errorMsg = ""
    
    init(){}
    
    func insertUserRecord(id: String) {
        let newUser = User(id: id, name: name, email: email, joinedAt: Date().timeIntervalSince1970)
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(id)
            .setData(newUser.asDictionary())
    
    }
    
    func register() {
        guard validate() else {
            return
        }
        
        //Create a user
        Auth.auth().createUser(withEmail: email, password: password) {[weak self] result, error in
            guard let userId = result?.user.uid else {
                return
            }
            self?.insertUserRecord(id: userId)
        }
        
        
    }
    
    private func validate()-> Bool{
        errorMsg = ""
        
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty,
                !email.trimmingCharacters(in: .whitespaces).isEmpty,
                !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMsg = "❌ Please fill in all fields."
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMsg = "❌ Please enter valid email."
            return false
        }
        
        guard password.count >= 6 else {
            return false
        }
        
        return true
    }
}
