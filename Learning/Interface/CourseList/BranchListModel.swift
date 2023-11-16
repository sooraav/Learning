//
//  CourseListModel.swift
//  Learning
//
//  Created by Sourav on 16/11/23.
//

import Foundation

struct BranchListModel {
    var branches: [Branch]?
    var filteredBranches: [Branch]?
}

struct Response: Decodable {
    let status: String
    let branches: [Branch]
    
}

struct Branch: Decodable {
    
    let id: Int
    let name: String
    let short: String
}
