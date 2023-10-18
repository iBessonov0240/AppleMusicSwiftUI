//
//  ColumsRadioView.swift
//  AppleMusicSwiftUI
//
//  Created by i0240 on 18.10.2023.
//

import SwiftUI

struct ColumsRadioView: View {

    var colum: BroadcastRadioItems

    var body: some View {
        HStack {
            Image(colum.image)
                .resizable()
                .frame(width: 120 , height: 120)
                .cornerRadius(5)
                .shadow(radius: 1)

            VStack {
                Text(colum.title)
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 45)

                Text(colum.subtitle)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .frame(maxWidth: .infinity, alignment: .leading)

                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.gray)
                    .padding(.trailing)
                    .padding(.top, 45)
            }
        }
    }
}

#Preview {
    ColumsRadioView(colum: BroadcastRadioItems.items[0])
}
