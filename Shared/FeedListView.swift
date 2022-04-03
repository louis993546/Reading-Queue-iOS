//
//  FeedListView.swift
//  Reading Queue
//
//  Created by Louis Tsai on 03.04.22.
//

import SwiftUI

struct FeedListView: View {
    @State private var selectedView: Int? = 1
    
    var body: some View {
        NavigationView {
            List(1..<5) { item in
                NavigationLink(
                    destination: FeedView("Destination \(item)"),
                    tag: item,
                    selection: self.$selectedView
                ) {
                    Text("Navigation Link \(item)")
                }
            }
        }
    }
}

//struct FeedListView_Previews: PreviewProvider {
//    static var previews: some View {
//        FeedListView()
//    }
//}
