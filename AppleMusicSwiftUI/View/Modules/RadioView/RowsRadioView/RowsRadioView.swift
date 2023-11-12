//
//  RowsRadioView.swift
//  AppleMusicSwiftUI
//
//  Created by i0240 on 16.10.2023.
//

import SwiftUI

struct RowsRadioView: View {

    var row: RadioItems

    var body: some View {
        VStack {
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.gray)

            Text(row.subtitle)
                .font(.subheadline)
                .foregroundColor(.secondary)
                .frame(maxWidth: .infinity, alignment: .leading)

            Text(row.title)
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom)

            Image(row.image)
                .resizable()
                .frame(width: .infinity , height: 220)
                .cornerRadius(5)
                .padding(.bottom)

            Rectangle()
                .frame(height: 1)
                .foregroundColor(.gray)
        }
    }
}

struct RowsRadioView_Previews: PreviewProvider {
    static var previews: some View {
        RowsRadioView(row: RadioItems.items[0])
    }
}
