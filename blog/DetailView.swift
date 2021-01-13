//
//  DetailView.swift
//  blog
//
//  Created by maart on 2021/01/13.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
            
        }
        .navigationTitle("Detail")
        .onAppear(perform: {
            print("onAppear DetailView")
        })
        .onDisappear(perform: {
            print("onDisappear DetailView")
        })
            
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
