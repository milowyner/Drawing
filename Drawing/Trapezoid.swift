//
//  Trapezoid.swift
//  Drawing
//
//  Created by Milo Wyner on 8/13/21.
//

import SwiftUI

struct Trapezoid: Shape {
    var insetAmount: CGFloat
    var animatableData: CGFloat {
        get { insetAmount }
        set { insetAmount = newValue }
    }
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.addLines([
            CGPoint(x: 0, y: rect.maxY),
            CGPoint(x: insetAmount, y: rect.minY),
            CGPoint(x: rect.maxX - insetAmount, y: rect.minY),
            CGPoint(x: rect.maxX, y: rect.maxY)
        ])
        path.closeSubpath()
        
        return path
    }
}

struct Trapezoid_Previews: PreviewProvider {
    static var previews: some View {
        Trapezoid(insetAmount: 50)
            .stroke(Color.black, lineWidth: 10)
            .frame(width: 300, height: 300)
    }
}
