//
//  ContentView.swift
//  TodoApplication
//
//  Created by santtuniskanen on 5.5.2024.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        TabView() {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            ListView()
                .tabItem {
                    Label("List", systemImage: "note")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
