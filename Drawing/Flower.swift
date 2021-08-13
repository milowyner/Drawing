//
//  Flower.swift
//  Drawing
//
//  Created by Milo Wyner on 8/12/21.
//

import SwiftUI

struct Flower: Shape {
    var petalOffset: CGFloat = -20
    var petalWidth: CGFloat = 100
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        for number in stride(from: 0, to: 2 * CGFloat.pi, by: .pi / 8) {
            let rotation = CGAffineTransform(rotationAngle: number)
            
            let position = rotation.concatenating(CGAffineTransform(translationX: rect.width / 2, y: rect.height / 2))
            
            let originalPetal = Path(ellipseIn: CGRect(x: petalOffset, y: 0, width: petalWidth, height: rect.width / 2))
            
            let rotatedPetal = originalPetal.applying(position)
            
            path.addPath(rotatedPetal)
        }
        
        return path
    }
}

struct Flower_Previews: PreviewProvider {
    static var previews: some View {
        Flower()
            .stroke(Color.red, lineWidth: 2)
    }
}
