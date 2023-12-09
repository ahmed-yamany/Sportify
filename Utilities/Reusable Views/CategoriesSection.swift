//
//  CategoriesView.swift
//  Sportify
//
//  Created by Ahmed Yamany on 09/12/2023.
//

import SwiftUI
import Extensions

struct CategoriesSection: View {
    let categories: [SPCategory]
    @Binding var selectedCategoryId: UUID
    @Namespace var animation
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(categories) { category in
                    categoryView(category: category)
                }
            }
            .padding(.horizontal, .containerSpacing)
            .animation(.easeInOut, value: selectedCategoryId)
        }
        .frame(height: 36)
    }
    
    func categoryView(category: SPCategory) -> some View {
        HStack {
            Text(category.image)
            Text(category.title)
        }
        .font(.medium)
        .padding(.horizontal, 16)
        .frame(height: 36)
        .foregroundStyle(
            selectedCategoryId == category.id ? .spBackground : .spTextPrimary
        )
        .background(
            selectedCategoryId == category.id ? .clear : .spBackground
        )
        .clipShape(SPShape())
        .background {
            if selectedCategoryId == category.id {
                SPShape()
                    .matchedGeometryEffect(id: "category", in: animation)
                    .frame(height: 36)
                    .foregroundColor(.spBlack)
            }
        }
        .onTapGesture {
            selectedCategoryId = category.id
        }
    }
}

#Preview {
    CategoriesSection(categories: [], selectedCategoryId: .constant(UUID()))
}
