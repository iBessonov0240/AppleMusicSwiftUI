//
//  BroadcastRadioItem.swift
//  AppleMusicSwiftUI
//
//  Created by i0240 on 18.10.2023.
//

import SwiftUI

struct BroadcastRadioItems {
    var image: String = ""
    var title: String = ""
    var subtitle: String = ""
}

extension BroadcastRadioItems {
    static var items: [BroadcastRadioItems] = [
        BroadcastRadioItems(image: "cool", title: "COOLfahrenheit", subtitle: "From Tunein"),
        BroadcastRadioItems(image: "hitz", title: "HITZ Thailand", subtitle: "From Tunein"),
        BroadcastRadioItems(image: "eazy", title: "Eazy FM 105.5", subtitle: "From Tunein"),
        BroadcastRadioItems(image: "starfm", title: "STAR FM", subtitle: "From Tunein"),
        BroadcastRadioItems(image: "bbc5", title: "BBC Radio 5 live", subtitle: "From Tunein"),
        BroadcastRadioItems(image: "bbc2", title: "BBC Radio 2", subtitle: "From Tunein"),
        BroadcastRadioItems(image: "bbc4", title: "BBC Radio 4", subtitle: "From Tunein"),
        BroadcastRadioItems(image: "jazz", title: "ADC Jazz", subtitle: "From Tunein")
    ]
}
