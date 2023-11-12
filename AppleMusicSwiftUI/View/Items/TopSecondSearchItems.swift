//
//  TopSecondSearchItems.swift
//  AppleMusicSwiftUI
//
//  Created by i0240 on 09.11.2023.
//

import SwiftUI

struct TopSecondSearchItems {
    var subtitle: String = ""
    var title: String = ""
    var image: String = ""
}

extension TopSecondSearchItems {
    static var items: [TopSecondSearchItems] = [
        TopSecondSearchItems(subtitle: "A DIAMOND'S GOTTA SHINE", title: "This is the story of Taylor's remarkable, record-breaking 2023", image: "artist"),
        TopSecondSearchItems(subtitle: "JUST UPDATED", title: "Billie Eilish Essentials", image: "billie_eilish"),
        TopSecondSearchItems(subtitle: "NEW ALBUM", title: "For All The Dogs", image: "drake"),
        TopSecondSearchItems(subtitle: "WATCH NOW", title: "Dominic Fike: Apple Music Live", image: "list_pop_A"),
        TopSecondSearchItems(subtitle: "JUST UPDATED", title: "A-List Pop", image: "list_pop_B"),
        TopSecondSearchItems(subtitle: "NEW ALBUM", title: "1989 (Taylor's Version) [Delux]", image: "tailor"),
        TopSecondSearchItems(subtitle: "FEATURED PLAYLIST", title: "Today's Hits", image: "today_hits")
    ]
}
