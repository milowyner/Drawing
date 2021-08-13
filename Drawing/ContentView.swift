//
//  ContentView.swift
//  Drawing
//
//  Created by Milo Wyner on 8/12/21.
//

import SwiftUI

struct ContentView: View {
    @State private var insetAmount: CGFloat = 0

    var body: some View {
        Trapezoid(insetAmount: insetAmount)
            .frame(width: 200, height: 100)
            .onTapGesture {
                withAnimation {
                    insetAmount = insetAmount == 100 ? 0 : 100
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
