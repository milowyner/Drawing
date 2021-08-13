//
//  ContentView.swift
//  Drawing
//
//  Created by Milo Wyner on 8/12/21.
//

import SwiftUI

struct ContentView: View {
    @State private var petalOffset: CGFloat = -20.0
    @State private var petalWidth: CGFloat = 100.0
    
    var body: some View {
        VStack {
            Flower(petalOffset: petalOffset, petalWidth: petalWidth)
                .fill(Color.red, style: FillStyle(eoFill: true))
            
            Text("Offset")
            Slider(value: $petalOffset, in: -40...400)
                .padding([.horizontal, .bottom])
            
            Text("Width")
            Slider(value: $petalWidth, in: 0...100)
                .padding(.horizontal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
