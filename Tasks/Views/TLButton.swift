//
//  TLButton.swift
//  Tasks
//
//  Created by 胡爽怡 on 9/15/24.
//

import SwiftUI

struct TLButton: View {
    let text: String
    let color: Color
    let action: () -> Void
    var body: some View {
        Button{
            //Action
            action()
        
         } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(color)
                
                Text(text)
                    .foregroundColor(.white)
                    .bold()
            }
        }
    }
}

#Preview {
    TLButton(text: "text", color: Color.blue){
        //action
    }
}

