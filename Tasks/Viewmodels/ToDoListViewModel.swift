//
//  ToDoListViewModel.swift
//  Tasks
//
//  Created by 胡爽怡 on 9/15/24.
//

import Foundation
import FirebaseFirestore

//Primary tab
//ViewModel for list
class ToDoListViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String){
        self.userId = userId
    }
    
    
    ///Delete to do list item
    ///- Parameter id: item to delete
    ///
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
