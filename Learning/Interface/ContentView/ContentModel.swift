//
//  ContentModel.swift
//  Learning
//
//  Created by Sourav on 16/11/23.
//

import Foundation

struct ContentModel {
    
    let greeting: Greeting
    let QueryCards: [QueryCard]
    
}

struct QueryCard{
    let title: String
    let subTitle: String
    let buttonText:String
}
struct Greeting {
    
    let greetingText: String
    let greetingSubText: String
}
