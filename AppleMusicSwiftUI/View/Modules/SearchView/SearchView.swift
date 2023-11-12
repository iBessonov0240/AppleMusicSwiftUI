//
//  SearchView.swift
//  AppleMusicSwiftUI
//
//  Created by i0240 on 05.11.2023.
//

import SwiftUI

struct SearchView: View {

    @StateObject var viewModel = CategoryModel()
    @State private var selectLibrary = "Apple Music"
    @State var textInSearch = "Artists, Songs, Lyrics and More"
    private let segments = ["Apple Music", "Your Library"]

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                HStack {
                    Text("Поиск по категориям")
                        .font(.title2)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding([.leading, .top])
                        .padding(.bottom, -15)
                }
                LazyVGrid(columns: columns) {
                    ForEach(viewModel.filteredCategorys, id: \.self) { category in
                        NavigationLink {
                            SecondSearchView(title: category.title)
                        } label: {
                            Image(category.image)
                                .frame(height: 110)
                                .foregroundColor(.blue)
                                .cornerRadius(10)
                        }
                    }
                }
                .padding()
                .padding(.bottom, 75)
            }
            .navigationTitle("Поиск")
            .searchable(text: $viewModel.searchText, prompt: textInSearch) {
                Picker("Choose library", selection: $selectLibrary) {
                    ForEach(segments, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.segmented)
                .listRowSeparator(.hidden, edges: .top)
                .padding(.bottom, 8)
                .onChange(of: selectLibrary) { newValue in
                    textInSearch = (newValue == "Apple Music") ? "Artists, Songs, Lyrics and More" : "Your Library"
                }

                ForEach(viewModel.filteredSuggestions, id: \.self) { suggestion in
                    Label(suggestion, systemImage: "magnifyingglass")
                        .searchCompletion(suggestion)
                }
                .searchSuggestions(.visible, for: .content)
                .accentColor(.gray)

                LazyVGrid(columns: columns) {
                    ForEach(viewModel.filteredCategorys, id: \.self) { category in
                        NavigationLink {
                            SecondSearchView(title: category.title)
                        } label: {
                            Image(category.image)
                                .frame(height: 110)
                                .foregroundColor(.blue)
                                .cornerRadius(10)
                        }
                    }
                }
                .listRowSeparator(.hidden, edges: .bottom)
            }
        }
        .background(Color(.systemBackground))
        .accentColor(.red)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
