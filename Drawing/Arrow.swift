//
//  Arrow.swift
//  Drawing
//
//  Created by Milo Wyner on 8/13/21.
//

import SwiftUI

struct Arrow: Shape {
    var headWidth: CGFloat = 30
    var headHeight: CGFloat = 40
    var lineWidth: CGFloat = 6
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        // arrow head triangle
        path.addLines([
            CGPoint(x: rect.midX, y: rect.minY),
            CGPoint(x: rect.midX - headWidth / 2, y: rect.minY + headHeight),
            CGPoint(x: rect.midX + headWidth / 2, y: rect.minY + headHeight)
        ])
        path.closeSubpath()
        
        // arrow line rectangle
        path.addRect(CGRect(
            x: rect.midX - lineWidth / 2,
            y: rect.minY + headHeight,
            width: lineWidth,
            height: rect.maxY - headHeight
        ))
        
        return path
    }
}

struct Arrow_Previews: PreviewProvider {
    static var previews: some View {
        Arrow()
    }
}
