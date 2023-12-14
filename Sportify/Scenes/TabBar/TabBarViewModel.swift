//
//  TabBarViewModel.swift
//  Sportify
//
//  Created by Ahmed Yamany on 08/12/2023.
//

import SwiftUI

class TabBarViewModel: ObservableObject {
    static var shared = TabBarViewModel()
    
    @Published var selectedBar: BarType = .home
    @Published var isHidden: Bool = false
    
    private init() {}
}
