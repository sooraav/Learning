//
//  File.swift
//  Learning
//
//  Created by Sourav on 16/11/23.
//

import Foundation

extension ContentView {
    @MainActor
    class ContentViewViewModel: ObservableObject {
        @Published var model: ContentModel
        @Published var tabSelected = 0
        
        init() {
            let queryCard = QueryCard(title: "Have any queries?", subTitle: "Talk to an academic counsellor for free", buttonText: "Call now")
            let model = ContentModel(greeting: Greeting(greetingText: "Hey Shwet!", greetingSubText: "Let’s learn something new today"),
                                                QueryCards: [queryCard,queryCard,queryCard])
            self.model = model
        }
    }
}
