//
//  ContentView.swift
//  Drawing
//
//  Created by Milo Wyner on 8/12/21.
//

import SwiftUI

struct ContentView: View {
    @State var colorCycle: Double = 0
    
    var body: some View {
        VStack {
            ColorCyclingRectangle(amount: colorCycle, gradientPosition: (start: .topLeading, end: .bottomTrailing))
                .frame(width: 300, height: 300)
            
            Slider(value: $colorCycle)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
