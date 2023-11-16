//
//  SwiftUIView.swift
//  Learning
//
//  Created by Sourav on 16/11/23.
//

import SwiftUI

struct BranchView: View {
    @State var branch: Branch
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                Image("mech-eng")
                .frame(width: 38, height: 38)
                Text(branch.short)
                .font(
                Font.custom("Inter", size: 16)
                .weight(.bold)
                )
                .foregroundColor(Color(red: 0.04, green: 0.33, blue: 0.5))
            }
            .padding([.top,.leading], 16)
            Text(branch.name)
            .font(Font.custom("Inter", size: 10))
            .foregroundColor(Color(red: 0.18, green: 0.18, blue: 0.18))
            .frame(width: 134, alignment: .topLeading)

        }
        .foregroundColor(.clear)
        .frame(width: 164.99998, height: 102.00002)
        .background(.white)
        .cornerRadius(10)
        .shadow(color: Color(red: 0.2, green: 0.27, blue: 0.34).opacity(0.1), radius: 10, x: 0, y: 4)

    }
}

#Preview {
    BranchView(branch: Branch(id: 1, name: "Mech", short: "Mechanical Engineering"))
}
