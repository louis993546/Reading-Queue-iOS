//
//  ContentView.swift
//  Shared
//
//  Created by Louis Tsai on 01.04.22.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            FeedListView()
                .tag(0)
                .tabItem {
                    Image(systemName: "newspaper")
                    Text("Feed")
                }
            QueueView()
                .tag(1)
                .tabItem {
                    Image(systemName: "tray")
                    Text("Queue")
                }
            Text("Search")
                .tag(2)
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            FavoriteView()
                .tag(3)
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favorite")
                }
            SettingsView()
                .tag(4)
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
