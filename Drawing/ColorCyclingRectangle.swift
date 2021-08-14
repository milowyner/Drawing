//
//  ColorCyclingRectangle.swift
//  Drawing
//
//  Created by Milo Wyner on 8/13/21.
//

import SwiftUI

struct ColorCyclingRectangle: View {
    var amount = 0.0
    var steps = 100
    var gradientPosition: (start: UnitPoint, end: UnitPoint) = (.top, .bottom)
    
    var body: some View {
        ZStack {
            ForEach(0..<steps) { value in
                Rectangle()
                    .inset(by: CGFloat(value))
                    .strokeBorder(LinearGradient(gradient: Gradient(colors: [
                        color(for: value, brightness: 1), Color.blue,
                        color(for: value, brightness: 0.5)
                    ]), startPoint: gradientPosition.start, endPoint: gradientPosition.end), lineWidth: 2)
            }
        }
        .drawingGroup()
    }
    
    func color(for value: Int, brightness: Double) -> Color {
        var targetHue = Double(value) / Double(steps) + amount
        
        if targetHue > 1 {
            targetHue -= 1
        }
        
        return Color(hue: targetHue, saturation: 1, brightness: brightness)
    }
}

struct ColorCyclingRectangle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCyclingRectangle()
    }
}