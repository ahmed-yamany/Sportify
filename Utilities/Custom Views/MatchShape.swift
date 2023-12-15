//
//  MatchShape.swift
//  Sportify
//
//  Created by Ahmed Yamany on 15/12/2023.
//

import SwiftUI

struct MatchShape: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.midX - 28, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.midX + 24, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.midX - 28, y: rect.maxY))
        }
    }
}
