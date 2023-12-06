//
//  SPShape.swift
//  Sportify
//
//  Created by Ahmed Yamany on 05/12/2023.
//

import SwiftUI

struct SPShape: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            let cutValue: CGFloat = 14
            path.move(to: CGPoint(x: rect.minX, y: rect.midY))
            path.addLine(to: CGPoint(x: rect.minX + cutValue, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX - cutValue, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
            path.addLine(to: CGPoint(x: rect.maxX - cutValue, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.minX + cutValue, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.midY))
        }
    }
}
