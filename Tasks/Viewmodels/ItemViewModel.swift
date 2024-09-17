//
//  ItemViewModel.swift
//  Tasks
//
//  Created by 胡爽怡 on 9/15/24.
//
import FirebaseAuth
import FirebaseFirestore
import Foundation

class ItemViewModel : ObservableObject {
    init(){}
    
    func toggleIsDone(item: ToDoListItem) {
        //item is constant, so needs a copy
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}

