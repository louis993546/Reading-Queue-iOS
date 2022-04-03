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
        ScrollView {
            VStack(alignment: .leading) {
                AsyncImage(url: content.imageUrl) { image in
                    image
                        .resizable()
                        .aspectRatio(3/2, contentMode: .fit)
                        
                } placeholder: {
                    ProgressView()
                }
                Text(content.title)
                Text(content.description)
                Spacer()
            }
        }
        .ignoresSafeArea(edges: .top)
    }
}


//struct ReadingView_Previews: PreviewProvider {
//    static var previews: some View {
//        ReadingContentView()
//    }
//}
