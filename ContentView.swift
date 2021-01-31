//
//  ContentView.swift
//  Challenge14
//
//  Created by Kushal P on 1/13/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var seasonData: ModelData
    @State private var selection: Tab = .featured
    enum Tab {
        case featured
        case list
    }
    var body: some View {
        TabView(selection: $selection) {
            SeasonsAvailable()
            .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            SeasonList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
                .environmentObject(ModelData())
        }
    }
}
