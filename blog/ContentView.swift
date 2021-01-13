//
//  ContentView.swift
//  blog
//
//  Created by maart on 2021/01/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink("Go Detail", destination: DetailView())
            }
            .navigationTitle("Home")
        }
        .onAppear(perform: {
            print("onAppear ContentView")
        })
        .onDisappear(perform: {
            print("onDisappear ContentView")
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
