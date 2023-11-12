//
//  TabBar.swift
//  AppleMusicSwiftUI
//
//  Created by i0240 on 10.10.2023.
//

import SwiftUI

struct TabBar: View {

    @StateObject private var playerViewModel = PlayerModel()
    @State private var isSecondMediaViewPresented = false
    @State private var verticalPosition = 0.0
    @State private var current = 2

    var body: some View {
        ZStack {
            TabView(selection: $current) {
                LibraryView(items: MediaListItems.items)
                    .tag(0)
                    .tabItem {
                        Image(systemName: "play.square.stack")
                        Text("Медиатека")
                    }

                RadioView()
                    .tag(1)
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Радио")
                    }

                SearchView()
                    .tag(2)
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Поиск")
                    }
            }
            .accentColor(.red)
            .background(Color(.systemBackground))

            VStack {
                Spacer()

                Button(action: {
                    isSecondMediaViewPresented.toggle()
                }) {
                    BottomMedia(isPlaying: $playerViewModel.isPlaying)
                        .foregroundColor(.black)
                }
                .fullScreenCover(isPresented: $isSecondMediaViewPresented) {
                    SecondMediaView(isPlaying: $playerViewModel.isPlaying)
                        .offset(y: verticalPosition)
                        .gesture(
                            gestureVertical()
                        )
                        .transition(.slide)
                }
                .frame(minHeight: 160)
            }
        }
    }

    private func gestureVertical() -> some Gesture {
        return DragGesture()
            .onChanged { value in
                if value.translation.height < 0 {
                    verticalPosition = 0
                } else {
                    verticalPosition = value.translation.height
                }

            }
            .onEnded { value in
                withAnimation(.linear(duration: 0.05)) {
                    isSecondMediaViewPresented.toggle()
                    verticalPosition = .zero
                }
            }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
