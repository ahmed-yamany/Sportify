//
//  NewsDetailsViewModel.swift
//  Sportify
//
//  Created by Ahmed Yamany on 13/12/2023.
//

import SwiftUI

class NewsDetailsViewModel: ObservableObject {
    let news: SPNews
    init(news: SPNews) {
        self.news = news
    }
}
