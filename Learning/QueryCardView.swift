//
//  QueryCardView.swift
//  Learning
//
//  Created by Sourav on 16/11/23.
//

import SwiftUI

struct QueryCardView: View {
    
    @State var model: QueryCard
    var body: some View {
        ZStack(alignment: .leading) {
            Color(red: 1, green: 0.94, blue: 0.85)
            HStack {
                Spacer()
                Image("undraw_questions_re_1fy7 2")
            }

            VStack(alignment: .leading) {
                Text(model.title)
                    .font(
                        Font.custom("Inter", size: 16)
                            .weight(.medium)
                    )
                    .foregroundColor(Color(red: 0.44, green: 0.27, blue: 0.05))
                Text(model.subTitle)
                    .font(
                        Font.custom("Inter", size: 12)
                            .weight(.light)
                    )
                    .foregroundColor(Color(red: 0.44, green: 0.27, blue: 0.05))
                
                Button(action: {
                    print("Call now Pressed")
                }) {
                    HStack(alignment: .center, spacing: 10) {
                        Text(model.buttonText)
                            .font(
                                Font.custom("Inter", size: 12)
                                    .weight(.medium)
                            )
                            .foregroundColor(.white)
                    }
                    .padding(.horizontal, 22)
                    .padding(.vertical, 8)
                    .background(Color(red: 0.92, green: 0.59, blue: 0.15))
                    
                    .cornerRadius(33)
                }
                
            }
            .padding(.leading, 24)
        }
        .frame(width: 343,height: 132)
        .cornerRadius(15)
    }
}

#Preview {
    QueryCardView(model: QueryCard(title: "fdf", subTitle: "sd", buttonText: "sfs"))
}
