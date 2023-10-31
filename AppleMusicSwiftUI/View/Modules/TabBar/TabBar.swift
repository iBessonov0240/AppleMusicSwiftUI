//
//  TabBar.swift
//  AppleMusicSwiftUI
//
//  Created by i0240 on 10.10.2023.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            LibraryView(items: MediaListItems.items)
                .tabItem {
                    Image(systemName: "play.square.stack")
                    Text("Медиатека")
                }

            RadioView()
                .tabItem {
                    Image(systemName: "dot.radiowaves.left.and.right")
                    Text("Радио")
                }

            Text("Поиск")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Поиск")
                }
        }
        .accentColor(.red)
        .background(Color(.systemBackground))
        .overlay {
            VStack {
                Spacer()
                BottomMedia()
                    .padding(.bottom , 35)
            }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
