//
//  SearchBar.swift
//  Learning
//
//  Created by Sourav on 16/11/23.
//

import SwiftUI

struct SearchBar: View {
    @Binding var searchText: String
    @Binding var isSearching: Bool
    
    var body: some View {
        HStack {
            TextField("Search...", text: $searchText)
                .padding(.leading, 24)
                .onChange(of: searchText) { _ in
                    // You can perform additional actions when the search text changes
                }
            
            Button {
                searchText = ""
                isSearching = false
            } label: {
                Image(systemName: "xmark.circle.fill")
                    .foregroundColor(.gray)
            }
            .padding(.trailing, 8)
            
        }
        .padding()
        .background(Color(.systemGray5))
        .cornerRadius(10)
        .padding(.horizontal)
        .onTapGesture {
            isSearching = true
        }
    }
}
