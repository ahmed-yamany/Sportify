//
//  CategoryPicker.swift
//  Sportify
//
//  Created by Ahmed Yamany on 14/12/2023.
//

import SwiftUI

struct CategoryPicker: View {
    @Binding var selectedCategory: SPCategoryType
    
    var body: some View {
        Menu {
            ForEach(SPCategoryType.allCases, id: \.hashValue) { categoryType in
                Button(categoryType.rawValue.uppercased()) {
                    selectedCategory = categoryType
                }
                .font(.medium.bold())
                .fontWeight(.bold)
                
            }
        } label: {
            SPShape()
                .fill(Color.spPink)
                .frame(width: 122, height: 32)
                .overlay {
                    HStack {
                        Text(selectedCategory.rawValue.uppercased())
                        Image(systemName: "chevron.down")
                    }
                    .font(.small)
                    .fontWeight(.medium)
                    .foregroundStyle(Color.spBackground)
                }
        }
    }
}
