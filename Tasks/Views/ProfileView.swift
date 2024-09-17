//
//  ProfileView.swift
//  Tasks
//
//  Created by 胡爽怡 on 9/15/24.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                if let user = viewModel.user {
                    profile(user: user)
                } else {
                    Text("Loading profile... ")
                }
            }
            .navigationTitle("Profile")
        }
        .onAppear {
            viewModel.fetchUser()
        }
    }
    
    @ViewBuilder
    func profile(user: User) -> some View {
        //avatar
        Image(systemName: "person.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .frame(width: 125, height: 125)
            .padding()
        //info: name, email, member since
        VStack(alignment: .leading) {
            HStack {
                Text("Name:")
                    .bold()
                Text(user.name)
            }
            .padding()
            
            HStack {
                Text("Email:")
                    .bold()
                Text(user.email)
            }
            .padding()
            
            HStack {
                Text("Member since:")
                    .bold()
                Text("\(Date(timeIntervalSince1970: user.joinedAt).formatted(date: .abbreviated, time: .shortened))")
            }
            .padding()
        }
        
        //sign out
        Button("Log Out") {
            viewModel.logout()
        }
        .tint(.red)
        
       Spacer()
    }
}

#Preview {
    ProfileView()
}
