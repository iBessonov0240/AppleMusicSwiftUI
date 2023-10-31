//
//  BottomMedia.swift
//  AppleMusicSwiftUI
//
//  Created by i0240 on 11.10.2023.
//

import SwiftUI

struct BottomMedia: View {

    @Environment(\.colorScheme) var colorScheme
    @State private var isPlaying = false

    var body: some View {
        VStack {
            HStack {
                Image("scherzinger")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(5)
                    .shadow(radius: 8)
                    .padding(15)
                Spacer()

                Text("Whatever U Like")
                    .padding([.leading, .trailing])
                    .offset(x: -45)

                Button {
                    isPlaying.toggle()

                    if isPlaying {
                        print("play button pressed")
                    } else {
                        print("stop button pressed")
                    }
                } label: {
                    if isPlaying {
                        Image(systemName: "stop.fill")
                            .font(.title)
                            .foregroundColor(colorScheme == .dark ? .white : .black)
                    } else {
                        Image(systemName: "play.fill")
                            .font(.title)
                            .foregroundColor(colorScheme == .dark ? .white : .black)
                    }
                }
                .padding([.leading])

                Button {
                    print("next button pressed")
                } label: {
                    Image(systemName: "forward.fill")
                        .font(.title)
                        .foregroundColor(.gray)
                }
                .padding([.leading, .trailing])
            }
            .background(Color(.systemBackground))

            Rectangle()
                .frame(height: 1)
                .foregroundColor(.gray)
                .padding(.top, -12)
        }
    }
}

struct BottomMedia_Previews: PreviewProvider {
    static var previews: some View {
        BottomMedia()
    }
}
