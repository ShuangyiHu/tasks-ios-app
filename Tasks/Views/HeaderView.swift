//
//  HeaderView.swift
//  Tasks
//
//  Created by 胡爽怡 on 9/15/24.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let background: Color
    let angle: Double
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: angle ))
            VStack {
                Text(title)
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .bold()
                
                Text(subtitle )
                    .font(.system(size: 30))
                    .foregroundColor(.white)
               
            }
            .padding(.top, 80)
            
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 350)
        .offset(y: -150)
    }
}
#Preview {
    HeaderView(title: "Title", subtitle: "Subtitle", background: Color.blue, angle: 15.0)
}
