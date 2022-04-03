//
//  FeedListView.swift
//  Reading Queue
//
//  Created by Louis Tsai on 03.04.22.
//

import SwiftUI

struct FeedListView: View {
    @State private var selectedView: Int? = 1
    @State private var showingOptions = false
    
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
            .navigationTitle("Feeds")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "plus")
                        .foregroundColor(.blue)
                        .onTapGesture {
                            showingOptions = true
                        }
                        .confirmationDialog(
                            "What do you want to add",
                            isPresented: $showingOptions
                        ) {
                            Button("RSS Feed") {
                                
                            }
                            Button("Newsletter (Coming soon)") {
                                // TODO
                            }
                            Button("Link from Clipboard") {
                                
                            }
                        }
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
