//
//  SecondSearchView.swift
//  AppleMusicSwiftUI
//
//  Created by i0240 on 05.11.2023.
//

import SwiftUI

struct SecondSearchView: View {

    var title: String

    let topRows = [
        GridItem(.fixed(220))
    ]

    let secondRows = [
        GridItem(.fixed(120))
    ]

    var body: some View {
            ScrollView(.vertical) {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: topRows, content: {
                        ForEach(0..<7) { index in
                            RowsTopSecondSearch(row: TopSecondSearchItems.items[index])
                                .frame(width: 350)
                                .aspectRatio(contentMode: .fill)
                                .padding(.leading, 5)
                        }
                    })
                    .padding([.leading, .trailing], 12)
                }

                HStack {
                    Text("Плейлист")
                        .font(.title2)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)

                    Button("Все") {
                        // TO DO Some Code
                    }
                    .font(.system(size: 16))
                    .foregroundColor(.red)
                    .padding(.trailing)
                }

                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: secondRows, content: {
                        ForEach(0..<6) { index in
                            RowsSecondSearch(row: SecondSearchItems.items[index])
                                .frame(width: 160)
                                .aspectRatio(contentMode: .fill)
                                .padding(.leading, 5)
                        }
                    })
                    .padding([.leading, .trailing], 12)
                }
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.gray.opacity(0.5))
                    .padding()
            }
            .navigationTitle(title)
    }
}

struct SecondSearchView_Previews: PreviewProvider {
    static var previews: some View {
        SecondSearchView(title: SearchCategoryItems.items[5].title)
    }
}
