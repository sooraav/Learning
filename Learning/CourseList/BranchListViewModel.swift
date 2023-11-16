//
//  CourseListViewModel.swift
//  Learning
//
//  Created by Sourav on 16/11/23.
//

import Foundation

extension BranchListView {
    
    @MainActor
    class BranchListViewModel: ObservableObject {
        @Published var model: BranchListModel
        
        init() {
            
            self.model = BranchListModel(branches: nil)
            
        }
        
        func getCourses() {
            
            guard let url = URL(string: "https://api.msigma.in/btech/v2/branches/") else {return}
            let request  = URLRequest(url: url, timeoutInterval: 10)
            Task {
                do {
                    
                    let (data,_) = try await URLSession.shared.data(for: request)
                    let decoder = JSONDecoder()
                    let branches = try decoder.decode(Response.self, from: data).branches
                    self.model.branches = branches
                } catch {
                    
                    print("urlRequest failed")
                }
            }
        }
    }

}
