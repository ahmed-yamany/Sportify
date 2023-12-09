//
//  PaginationView.swift
//  Sportify
//
//  Created by Ahmed Yamany on 09/12/2023.
//

import SwiftUI

struct SPPaginationView: View {
    let count: Int
    let selectedIndex: Int
    @Namespace private var animation

    var body: some View {
        HStack {
            ForEach(0..<count, id: \.self) { index in
                Rhombus()
                    .frame(width: 8, height: 8)
                    .foregroundStyle(index == selectedIndex ? .clear : .spTextSecondary)
                    .overlay {
                        if index == selectedIndex {
                            Rhombus()
                                .frame(width: 8, height: 8)
                                .foregroundStyle(Color.spPink)
                                .matchedGeometryEffect(id: "pagination", in: animation)
                        }
                    }
            }
        }
        .frame(height: 8)
    }
}

#Preview {
    SPPaginationView(count: 3, selectedIndex: 1)
}
