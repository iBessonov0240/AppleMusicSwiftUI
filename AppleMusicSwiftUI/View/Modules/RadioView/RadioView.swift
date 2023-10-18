//
//  RadioView.swift
//  AppleMusicSwiftUI
//
//  Created by i0240 on 16.10.2023.
//

import SwiftUI

struct RadioView: View {

    let rows = [
        GridItem(.fixed(250))
    ]

    let colums = [
        GridItem(.flexible())
    ]

    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows, content: {
                        ForEach(0..<3) { index in
                            RowsRadioView(row: RadioItems.items[index])
                                .frame(width: 350)
                                .aspectRatio(contentMode: .fill)
                                .padding([.leading], 12)
                        }
                    })
                }
                .padding(.bottom)

                HStack {
                    Text("Станции")
                        .font(.title2)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                }

                LazyVGrid(columns: colums, content: {
                    ForEach(0..<8) { index in
                        ColumsRadioView(colum: BroadcastRadioItems.items[index])
                            .padding(.leading)
                    }
                })
                .padding(.bottom, 49)
            }
            .navigationTitle("Радио")
        }
    }
}

#Preview {
    RadioView()
}
