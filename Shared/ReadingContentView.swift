//
//  ReadingView.swift
//  Reading Queue
//
//  Created by Louis Tsai on 03.04.22.
//

import SwiftUI

struct ReadingContentView: View {
    let content: ReadingContent
    
    var body: some View {
        VStack {
            Text(content.title)
            Text(content.description)
        }
    }
}


//struct ReadingView_Previews: PreviewProvider {
//    static var previews: some View {
//        ReadingContentView()
//    }
//}
