//
//  MediaListCell.swift
//  AppleMusicSwiftUI
//
//  Created by i0240 on 12.10.2023.
//

import SwiftUI

struct MediaListCell: View {

    var cell: MediaListItems

    var body: some View {
        HStack {
            Image(systemName: cell.image)
                .foregroundColor(.red)

            Text(cell.title)
        }
    }
}
