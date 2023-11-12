//
//  SearchCategoryItems.swift
//  AppleMusicSwiftUI
//
//  Created by i0240 on 09.11.2023.
//

import SwiftUI

struct SearchCategoryItems: Hashable {
    var title: String = ""
    var image: String = ""
}

extension SearchCategoryItems {
    static var items: [SearchCategoryItems] = [
      SearchCategoryItems(title: "apple_music_artist_of_the_year_2023", image: "apple_music_artist_of_the_year_2023"),
      SearchCategoryItems(title: "fitness", image: "fitness"),
      SearchCategoryItems(title: "apple_music_live", image: "apple_music_live"),
      SearchCategoryItems(title: "dance", image: "dance"),
      SearchCategoryItems(title: "charts", image: "charts"),
      SearchCategoryItems(title: "chill", image: "chill"),
      SearchCategoryItems(title: "classical", image: "classical"),
      SearchCategoryItems(title: "country", image: "country"),
      SearchCategoryItems(title: "dj_mixes", image: "dj_mixes"),
      SearchCategoryItems(title: "electronic", image: "electronic"),
      SearchCategoryItems(title: "essentials", image: "essentials"),
      SearchCategoryItems(title: "feel_good", image: "feel_good"),
      SearchCategoryItems(title: "feeling_blue", image: "feeling_blue"),
      SearchCategoryItems(title: "focus", image: "focus"),
      SearchCategoryItems(title: "christian", image: "christian"),
      SearchCategoryItems(title: "hits", image: "hits"),
      SearchCategoryItems(title: "alternative", image: "alternative"),
      SearchCategoryItems(title: "acoustic", image: "acoustic"),
      SearchCategoryItems(title: "80s", image: "80s"),
      SearchCategoryItems(title: "90s", image: "90s"),
      SearchCategoryItems(title: "2000s", image: "2000s"),
      SearchCategoryItems(title: "2010s", image: "2010s"),
      SearchCategoryItems(title: "indonesian_music", image: "indonesian_music"),
      SearchCategoryItems(title: "j-rock", image: "j-rock"),
      SearchCategoryItems(title: "k-pop", image: "k-pop"),
      SearchCategoryItems(title: "kids", image: "kids"),
      SearchCategoryItems(title: "live_music", image: "live_music"),
      SearchCategoryItems(title: "malaysian_music", image: "malaysian_music"),
      SearchCategoryItems(title: "mandopop", image: "mandopop"),
      SearchCategoryItems(title: "motivation", image: "motivation"),
      SearchCategoryItems(title: "music_videos", image: "music_videos"),
      SearchCategoryItems(title: "origin_pilipino_music", image: "origin_pilipino_music"),
      SearchCategoryItems(title: "party", image: "party"),
      SearchCategoryItems(title: "pop", image: "pop"),
      SearchCategoryItems(title: "rock", image: "rock"),
      SearchCategoryItems(title: "romance", image: "romance"),
      SearchCategoryItems(title: "sleep", image: "sleep"),
      SearchCategoryItems(title: "spatial_audio", image: "spatial_audio"),
      SearchCategoryItems(title: "t-pop", image: "t-pop"),
      SearchCategoryItems(title: "tamil", image: "tamil"),
      SearchCategoryItems(title: "cantopop", image: "cantopop"),
      SearchCategoryItems(title: "thai_music", image: "thai_music"),
      SearchCategoryItems(title: "bollywood", image: "bollywood"),
      SearchCategoryItems(title: "brazilian_Hip-Hop", image: "brazilian_Hip-Hop"),
      SearchCategoryItems(title: "hip-hop", image: "hip-hop"),
      SearchCategoryItems(title: "vietnamese_music", image: "vietnamese_music"),
      SearchCategoryItems(title: "wellbeing", image: "wellbeing"),
      SearchCategoryItems(title: "rap", image: "rap"),
      SearchCategoryItems(title: "jazz_music", image: "jazz_music")
    ]
}
