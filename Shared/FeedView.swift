//
//  InboxView.swift
//  Reading Queue
//
//  Created by Louis Tsai on 01.04.22.
//

import SwiftUI

struct FeedView: View {
    let title: String
    let imageUrl: URL
    let feeds: [URL]
    
    init(_ title: String) {
        imageUrl = URL(string: "https://images.unsplash.com/photo-1609054367623-4fd42d7ade3b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MjJ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60")!
        
        feeds  = [
            imageUrl,
            imageUrl,
            imageUrl
        ]
        self.title = title
    }
    
    var body: some View {
        List {
            ForEach(0..<feeds.count) { index in
                // Hack to hide the chevron: https://stackoverflow.com/a/59832389/2384934
                ZStack {
                    CardView(url: feeds[index])
                    NavigationLink(destination: ReadingContentView(content: feeds[index].asReadingContent())) {
                        EmptyView()
                    }
                    .buttonStyle(PlainButtonStyle())
                }
                .listRowSeparator(.hidden)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle(title)
    }
}

struct InboxView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView("Feed")
    }
}

extension URL {
    func asReadingContent() -> ReadingContent {
        return ReadingContent(id: "something", title: "title", description: "description", imageUrl: self)
    }
}
