//
//  TabBarViewModel.swift
//  Sportify
//
//  Created by Ahmed Yamany on 08/12/2023.
//

import SwiftUI

class TabBarViewModel: ObservableObject {
    @Published var selectedBar: BarType = .home
}
