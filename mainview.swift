//
//  mainpage.swift
//  myntra
//
//  Created by Mohammed Ali Imran Neranki on 22/11/22.
//

import SwiftUI

struct mainview: View {
    var body: some View {
        NavigationStack{
            TabView{
                ContentView()
                    .tabItem{
                        Label("MainPage",systemImage: "house")
                    }
                explore()
                    .tabItem {
                        Label("explore",systemImage: "network")
                    }
                profile()
                    .tabItem {
                        Label("Profile", systemImage: "person")
                    }
                
            }
        }
    }
}

struct mainpage_Previews: PreviewProvider {
    static var previews: some View {
        mainview()
    }
}
