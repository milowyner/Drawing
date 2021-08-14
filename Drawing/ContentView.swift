//
//  ContentView.swift
//  Drawing
//
//  Created by Milo Wyner on 8/12/21.
//

import SwiftUI

struct ContentView: View {
    @State private var lineWidth: CGFloat = 2
    
    var body: some View {
        Arrow(lineWidth: lineWidth)
            .frame(width: 200, height: 200)
            .onTapGesture {
                withAnimation {
                    lineWidth = (lineWidth == 2) ? 8 : 2
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
