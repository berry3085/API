//
//  ContentView.swift
//  Shared
//
//  Created by 沈秉叡 on 2022/1/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            PopularView()
                .tabItem {
                    Image(systemName: "flame.fill")
                    Text("熱門")
                }
            NowPlayingView()
                .tabItem {
                    Image(systemName: "play.fill")
                    Text("上映中")
                }
            UpComingView()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("即將上映")
                }
            TopRatedView()
                .tabItem {
                    Image(systemName: "chart.bar.fill")
                    Text("評分最高")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
