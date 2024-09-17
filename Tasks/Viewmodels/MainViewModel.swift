//
//  MainViewModel.swift
//  Tasks
//
//  Created by 胡爽怡 on 9/15/24.
//

import Foundation
import FirebaseAuth

class MainViewModel: ObservableObject {
    @Published var currentUserId : String = ""
    private var  handler: AuthStateDidChangeListenerHandle?
    
    init() {
        self.handler = Auth.auth().addStateDidChangeListener { [weak self] _, user in
            DispatchQueue.main.async{
                self?.currentUserId = user?.uid ?? ""
            }
           
        }
    }
    
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }
}

