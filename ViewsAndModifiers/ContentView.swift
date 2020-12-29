//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Alison Gorman on 12/29/20.
//  100 Days of Swift
//  Day 24 - Project 3 - Challenge
//  Create a custom ViewModifier (and accompanying View extension) that makes a view have a large, blue font suitable for prominent titles in a view.

import SwiftUI

struct BigBlue: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
            .padding()
    }
}

extension View {
    func titleStyle() -> some View {
        self.modifier(BigBlue())
    }
}

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("""
                    100 Days of SwiftUI
                    Day 24
                    Views and Modifiers
                    """)
                .titleStyle()
            Text("Challenge 1. ")
                .padding()
            Text("""
            Create a custom ViewModifier (and accompanying View extension) that makes a view have a large, blue font suitable for prominent titles in a view.
            """)
                .font(.body)
                .padding()
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
