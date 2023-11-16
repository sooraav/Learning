//
//  ContentView.swift
//  Learning
//
//  Created by Sourav on 16/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ContentViewViewModel()
    var body: some View {
         
        ZStack {
            VStack {
                ZStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(height: 225)
                        .background(Color(red: 0.9, green: 0.96, blue: 1))
                    Image("Group 147")
                        .resizable()
                        .frame(height: 225)
                }
                .ignoresSafeArea()
                Spacer()
            }
            
            ScrollView {
                LazyVStack(spacing: 32) {
                    getgreetingsBar(greeting: viewModel.model.greeting)
                    cardTileView(queryCards: viewModel.model.QueryCards)
                    Spacer()
                }
                
                .padding(.bottom, 10)
            }
        }
    }
    func cardTileView(queryCards: [QueryCard]) -> some View {
        TabView(selection: $viewModel.tabSelected) {
            ForEach(Array(queryCards.enumerated()), id: \.offset) { _, querycard in
                
                QueryCardView(model: querycard)
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .frame(height: 200)
        
    }
}
func getgreetingsBar(greeting: Greeting) -> some View {
    
    HStack {
        VStack(alignment: .leading) {
            Text(greeting.greetingText)
            .font(
            Font.custom("Inter", size: 16)
            .weight(.semibold)
            )
            .foregroundColor(Color(red: 0.18, green: 0.18, blue: 0.18))
            Text(greeting.greetingSubText)
              .font(Font.custom("Inter", size: 12))
              .foregroundColor(Color(red: 0.33, green: 0.33, blue: 0.33))
        }
        .padding(.leading, 16)
        .padding(.top, 18)
        Spacer()
        Button(action: {
            print("Search Pressed")
        }) {
            Image("search")
                .background(
                    Circle()
                        .frame(width: 40.0, height: 40.0)
                        .foregroundColor(.white)
                        
                )
        }
        .frame(width: 40.0, height: 40.0)
        .padding(.top, 10)
        .padding(.trailing, 16)
        Button(action: {
            print("Search Pressed")
        }) {
            Image("bell")
                .background(
                    Circle()
                        .frame(width: 40.0, height: 40.0)
                        .foregroundColor(.white)
                )
        }
        .frame(width: 40.0, height: 40.0)
        .padding(.top, 10)
        .padding(.trailing, 15)
       
    }
    .frame(height: 56)
}

#Preview {
    ContentView()
}
