//
//  CategoryModel.swift
//  AppleMusicSwiftUI
//
//  Created by i0240 on 10.11.2023.
//

import SwiftUI

class CategoryModel: ObservableObject {

    @Published var categorys = SearchCategoryItems.items
    @Published var searchText: String = ""

    var filteredCategorys: [SearchCategoryItems] {
        guard !searchText.isEmpty else { return categorys }

        return categorys.filter { category in
            category.title.lowercased().contains(searchText.lowercased())
        }
    }

    @Published var suggestions = SearchCategoryItems.items.map { $0.title }

    var filteredSuggestions: [String] {
        guard !searchText.isEmpty else { return [] }

        return suggestions.sorted().filter { $0.lowercased().contains(searchText.lowercased()) }
    }
}

