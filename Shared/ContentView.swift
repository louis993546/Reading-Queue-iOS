//
//  ContentView.swift
//  Shared
//
//  Created by Louis Tsai on 01.04.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            FeedListView()
                .tabItem {
                    Image(systemName: "newspaper")
                    Text("Feed")
                }
            QueueView()
                .tabItem {
                    Image(systemName: "tray")
                    Text("Queue")
                }
            FavoriteView()
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favorite")
                }
            SettingsView()
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
