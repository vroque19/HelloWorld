//
//  ContentView.swift
//  HelloWorld
//
//  Created by Vanessa Roque on 11/9/24.
//

import SwiftUI


struct ContentView: View {
    @State private var name: String = "world"
    @State private var is_active: Bool = false
    var body: some View {
        ZStack {
            Color.blue
            VStack {
                let skyBlue = Color(red: 0.4627, green: 0.8392, blue: 1.0)
                Image(systemName: "heart")
                    .imageScale(.large).foregroundColor(skyBlue)
                    .foregroundStyle(.tint)
                Text("Hello, \(name)!" ).font(.largeTitle).foregroundColor(skyBlue)
                Button(action: {
                    clicked()
                }) {
                    Text("say hi")
                        .background(skyBlue).foregroundColor(.black).cornerRadius(5).padding()
                }
            }
        }
        .padding()
    }
    func clicked() {
        is_active = true
        name = "Vanessa"
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            is_active = false
            name = "world"
        }
    }
}


#Preview {
    ContentView()
}
