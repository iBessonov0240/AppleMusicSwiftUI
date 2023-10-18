//
//  RadioItems.swift
//  AppleMusicSwiftUI
//
//  Created by i0240 on 17.10.2023.
//

import SwiftUI

struct RadioItems {
    var title: String = ""
    var subtitle: String = ""
    var image: String = ""
}

extension RadioItems {
    static var items: [RadioItems] = [
        RadioItems(title: "Music 1", subtitle: "The new music that matters.", image: "today's-hits"),
        RadioItems(title: "Music Hits", subtitle: "Song you know and love.", image: "the-hit-list"),
        RadioItems(title: "Music Country", subtitle: "Where it sounds like home.", image: "apple-music-country")
    ]
}

