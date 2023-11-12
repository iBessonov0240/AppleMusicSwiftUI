//
//  RowsSecondSearch.swift
//  AppleMusicSwiftUI
//
//  Created by i0240 on 09.11.2023.
//

import SwiftUI

struct RowsSecondSearch: View {

    var row: SecondSearchItems

    var body: some View {
        VStack {

            Image(row.image)
                .resizable()
                .frame(width: 160, height: 160)
                .cornerRadius(5)
                .frame(maxWidth: .infinity, alignment: .leading)

            Text(row.title)
                .font(.system(size: 16))
                .frame(maxWidth: .infinity, alignment: .leading)

            Text(row.subtitle)
                .font(.system(size: 16))
                .foregroundColor(.secondary)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

struct RowsSecondSearch_Previews: PreviewProvider {
    static var previews: some View {
        RowsSecondSearch(row: SecondSearchItems.items[0])
    }
}
