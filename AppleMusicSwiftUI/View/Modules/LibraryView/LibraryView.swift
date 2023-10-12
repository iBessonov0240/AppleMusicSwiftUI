//
//  LibraryView.swift
//  AppleMusicSwiftUI
//
//  Created by i0240 on 10.10.2023.
//

import SwiftUI

struct LibraryView: View {

    @State var items: [MediaListItems]
    @State private var multiSelection = Set<UUID>()
    @State private var isEditing = false

    var body: some View {
        NavigationView {
            if isEditing {
                List($items, editActions: .move, selection: $multiSelection) { $item in
                    MediaListCell(cell: item)
                }
                .listStyle(.inset)
                .environment(\.editMode, .constant(isEditing ? EditMode.active : EditMode.inactive))
                .navigationTitle("Медиатека")
                .navigationBarItems(
                    trailing: Button(action: {
                        isEditing.toggle()
                    }, label: {
                        Text(isEditing ? "Готово" : "Править")
                            .foregroundColor(.red)
                    })
                )
            } else {
                VStack {
                    Text("Ищете свою музыку?")
                        .font(.headline)

                    Text("Здесь появится купленная Вами в iTunes Store музыка.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .padding([.leading, .trailing], 70)
                        .multilineTextAlignment(.center)
                }
                .navigationTitle("Медиатека")
                .navigationBarItems(
                    trailing: Button(action: {
                        isEditing.toggle()
                    }, label: {
                        Text(isEditing ? "Готово" : "Править")
                            .foregroundColor(.red)
                    })
                )
            }
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView(items: MediaListItems.items)
    }
}
