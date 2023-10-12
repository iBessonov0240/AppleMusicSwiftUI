//
//  BottomMedia.swift
//  AppleMusicSwiftUI
//
//  Created by i0240 on 11.10.2023.
//

import SwiftUI

struct BottomMedia: View {

    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        HStack {
            Image("scherzinger")
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(5)
                .shadow(radius: 8)


            Text("Whatever U Like")
                .padding()

            Button {
                print("play button pressed")
            } label: {
                Image(systemName: "play.fill")
                    .font(.title)
                    .foregroundColor(colorScheme == .dark ? .white : .black)
            }
            .padding(.leading)

            Button {
                print("next button pressed")
            } label: {
                Image(systemName: "forward.fill")
                    .font(.title)
                    .foregroundColor(.gray)
            }
            .padding(.leading)
        }
        .background(Color(.systemBackground))
    }
}

struct BottomMedia_Previews: PreviewProvider {
    static var previews: some View {
        BottomMedia()
    }
}
