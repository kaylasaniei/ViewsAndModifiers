//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by kayla saniei on 8/7/24.
//

import SwiftUI

struct ContentView: View {
    
    // add ViewBuilder bc swift doesnt do it automatically
    @ViewBuilder var saying1: some View { // computed property
        Text("when life gives you lemons")
    }
    
    let saying2 = Text("make lemonade")
    
    @State private var redText = false
    
    var body: some View {
        VStack {
            saying1
                .foregroundStyle(.purple)
            saying2
        }
        
        
        Button("red or blue? that's the question") {
            redText.toggle()
        }
        .foregroundStyle(redText ? .red : .blue)
        // use ternary operator when able
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(.pink)
        
        Text("hello world")
        .frame(width: 200, height: 200)
        .background(.red)
        .padding()
        .background(.blue)
        .padding()
        .background(.green)
        .padding()
        .background(.orange)
        
        VStack {
            Text("one")
                .blur(radius: 3)
                .font(.largeTitle)
            // blur is regular modifier
            // font is environment modifier
            Text("two")
            Text("three")
            Text("four")
        }
        .blur(radius: 1)
        .font(.title)
    }
}

#Preview {
    ContentView()
}
