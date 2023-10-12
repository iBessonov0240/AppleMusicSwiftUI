//
//  MediaListItems.swift
//  AppleMusicSwiftUI
//
//  Created by i0240 on 11.10.2023.
//

import SwiftUI

struct MediaListItems: Identifiable, Hashable {
    var id = UUID()
    var image: String = ""
    var title: String = ""
}

extension MediaListItems {
    static var items: [MediaListItems] = [
        MediaListItems(image: "music.note.list", title: "Playlist"),
        MediaListItems(image: "music.mic", title: "Artists"),
        MediaListItems(image: "square.stack", title: "Albums"),
        MediaListItems(image: "music.note", title: "Songs"),
        MediaListItems(image: "tv", title: "TV & Movies"),
        MediaListItems(image: "music.note.tv", title: "Music Videos"),
        MediaListItems(image: "guitars", title: "Genres"),
        MediaListItems(image: "person.2.crop.square.stack.fill", title: "Compilations"),
        MediaListItems(image: "music.quarternote.3", title: "Composers"),
        MediaListItems(image: "arrow.down.circle", title: "Downloaded"),
        MediaListItems(image: "music.note.house", title: "Home Sharing")
    ]
}
