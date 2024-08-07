//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by kayla saniei on 8/7/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(.pink)
        
        Button("hello world") {
            print(type(of: self.body))
        }
        .frame(width: 200, height: 200)
        .background(.red)
        .padding()
        .background(.blue)
        .padding()
        .background(.green)
        .padding()
        .background(.orange)
        
    }
}

#Preview {
    ContentView()
}
