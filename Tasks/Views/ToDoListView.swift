//
//  ToDoItemsView.swift
//  Tasks
//
//  Created by 胡爽怡 on 9/15/24.
//

import SwiftUI
import FirebaseFirestore

struct ToDoListView: View {
    @StateObject var viewModel: ToDoListViewModel
    
    //listening for live updates in db
    @FirestoreQuery var items: [ToDoListItem]
    
    
    init(userId: String) {
        self._viewModel = StateObject(wrappedValue: ToDoListViewModel(userId: userId))
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/todos")
        
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List(items) { item in
                    ItemView(item: item)
                        .swipeActions{
                            Button(
                                action: {
                                    
                                    viewModel.delete(id: item.id)
                                }, label: {
                                Text("Delete")
                                        
                                })
                            .tint(.red)
                        }
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("Your 🥔 List")
            .toolbar {
                Button {
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView, content: {
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            })
        }
        
    }
}

#Preview {
    ToDoListView(userId: "vz3oFxQQBlPP0uqkgFnSkr7gzPr2")
}
