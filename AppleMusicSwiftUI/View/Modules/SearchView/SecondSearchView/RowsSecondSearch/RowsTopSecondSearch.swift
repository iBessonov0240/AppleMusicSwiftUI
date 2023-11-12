//
//  RowsTopSecondSearch.swift
//  AppleMusicSwiftUI
//
//  Created by i0240 on 09.11.2023.
//

import SwiftUI

struct RowsTopSecondSearch: View {

    var row: TopSecondSearchItems

    var body: some View {
        VStack {
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.gray.opacity(0.5))

            Text(row.subtitle)
                .font(.system(size: 12))
                .foregroundColor(.secondary)
                .frame(maxWidth: .infinity, alignment: .leading)

            Text(row.title)
                .font(.title2)
                .frame(maxWidth: .infinity, alignment: .leading)

            Image(row.image)
                .resizable()
                .frame(width: .infinity , height: 220)
                .cornerRadius(5)
                .padding(.bottom)

            Rectangle()
                .frame(height: 1)
                .foregroundColor(.gray.opacity(0.5))
        }
    }
}

struct RowsTopSecondSearch_Previews: PreviewProvider {
    static var previews: some View {
        RowsTopSecondSearch(row: TopSecondSearchItems.items[0])
    }
}
