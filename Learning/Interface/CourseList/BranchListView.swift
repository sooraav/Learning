//
//  SwiftUIView.swift
//  Learning
//
//  Created by Sourav on 16/11/23.
//

import SwiftUI

struct BranchListView: View {
    @Environment(\.presentationMode) var presentation
    @StateObject var viewModel = BranchListViewModel()
    @State var searchText = ""
    @State var isSearching = false
    
    var body: some View {
        ZStack {
            VStack {
                ZStack {
                    Image("Frame 8")
                        .resizable()
                        .frame(height: 245)
                        .ignoresSafeArea()
                    
                }
                Spacer()
            }
            VStack(alignment: .leading) {
                Button(action: {
                    self.presentation.wrappedValue.dismiss()
                }) {
                    Image("arrow-left")
                        .frame(width: 24, height: 24)
                }
                
                Text("All B.Tech Courses")
                .font(Font.custom("Inter", size: 16).weight(.semibold))
                .foregroundColor(.white)
                .padding(.top, 20)
                
                Text("Find your branch")
                .font(Font.custom("Inter", size: 12))
                .foregroundColor(.white)
                .padding(.top, 7)

                SearchBar(searchText: $searchText, isSearching: $isSearching)
                ScrollView {
                    
                    LazyVGrid(columns: [GridItem(), GridItem()]) {
                        ForEach(viewModel.model.filteredBranches ?? [Branch](), id: \.id) { branch in
                            BranchView(branch: branch)
                        }
                    }
                    .padding(.bottom, 10)
                }
            }
                .padding(.horizontal, 16)
        }
        .onAppear() {
            
            viewModel.getCourses()
        }
        .onChange(of: searchText) { newValue in
            
            
            viewModel.search(query: newValue)
        }
        
        .navigationBarBackButtonHidden()
        
    }
}

#Preview {
    BranchListView()
}
