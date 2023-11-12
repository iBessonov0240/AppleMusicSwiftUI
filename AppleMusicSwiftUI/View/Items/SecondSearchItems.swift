//
//  SecondSearchItems.swift
//  AppleMusicSwiftUI
//
//  Created by i0240 on 09.11.2023.
//

import SwiftUI

struct SecondSearchItems {
    var image: String = ""
    var title: String = ""
    var subtitle: String = ""
}

extension SecondSearchItems {
    static var items: [SecondSearchItems] = [
        SecondSearchItems(image: "atmos_music", title: "Hits in Spatial Audio", subtitle: "Apple Music Hits"),
        SecondSearchItems(image: "flouer_music", title: "Acoustic Hits", subtitle: "Apple Music Pop"),
        SecondSearchItems(image: "lama_music", title: "Happy Hits", subtitle: "Apple Music Pop"),
        SecondSearchItems(image: "hits_music", title: "Today's Hits", subtitle: "Apple Music Hits"),
        SecondSearchItems(image: "list_music", title: "A-List Pop", subtitle: "Apple Music Pop"),
        SecondSearchItems(image: "scorpion_music", title: "Hip-Hop Hits", subtitle: "Apple Music Hip-Hop/Rap")
    ]
}
