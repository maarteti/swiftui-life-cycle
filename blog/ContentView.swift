//
//  ContentView.swift
//  blog
//
//  Created by maart on 2021/01/13.
//

import SwiftUI

struct ContentView: View {
    
    @State var isShowingModal: Bool

    var body: some View {
        NavigationView {
            VStack {
                NavigationLink("Go Detail", destination: DetailView())
                Button(action: {
                    self.isShowingModal.toggle()
                }) {
                    Text("Show Modal")
                }
            }
            .navigationTitle("Home")
        }
        .onAppear(perform: {
            print("onAppear ContentView")
        })
        .onDisappear(perform: {
            print("onDisappear ContentView")
        })
        .sheet(isPresented: $isShowingModal, content: {
            NavigationView {
                DetailView()
            }
        })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(isShowingModal: false)
    }
}
