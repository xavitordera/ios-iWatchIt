//
//  UI.swift
//  iWatchIt
//
//  Created by Xavi Tordera on 26/03/2020.
//  Copyright © 2020 Xavi Tordera. All rights reserved.
//
import UIKit


let kFakeSpashVC = "FakeSplashVC"
let kHomeVC = "HomeVC"
let kMoviesVC = "MoviesVC"
let kShowsVC = "ShowsVC"
let kTabBarVC = "TabBarVC"
let kSearchVC = "SearchVC"
let kDetailVC = "DetailVC"


let kHomeTrendingSection = "Trending"
let kHomeDiscoverSection = "You might like..."
let kHomeWatchlistSection = "Your watchlist"

let kLogoAnimation = "ic_loading_splash"


var kStoryboardHome: UIStoryboard{
    return UIStoryboard(name:"Home", bundle: Bundle.main)
}



let kTabMoviesImg = UIImage(named:"ic_tab_movies")
let kTabShowsImg = UIImage(named:"ic_tab_shows")
let kEmptyStateMedia = UIImage(named: "emptyStateMedia")
let kEmptyStateUserMale = UIImage(named: "ic_empty_user_male")
let kEmptyStateUserFemale = UIImage(named: "ic_empty_user_female")
let kMovieStar = UIImage(named: "ic_movie_star")
let kEmptyStar = UIImage(named: "ic_star_empty")
let kShare = UIImage(named: "ic_share")
let kWatchlistAdd = UIImage(named: "ic_watchlist_add")
let kWatchlistAdded = UIImage(named: "ic_watchlist_added")
let kPlay = UIImage(named: "ic_play")


let kHeightHomeSectionsInfiniteCarousel: CGFloat = 280
let kHomeSectionsInfiniteCarouselImageSize: ImageSize = .poster(size: PosterSize.medium)


let kInfiniteCarouselTVC = "InfiniteCarouselTVC"
let kInfiniteCarouselCVC = "InfiniteCarouselCVC"
let kDetailCarouselCVC = "DetailCarouselCVC"
let kHorizontalCarouselCVC = "HorizontalCarouselCVC"


let kSectionDetailHeader = "SectionDetailHeader"
let kSectionDetailOverview = "SectionDetailOverview"
let kSectionDetailPlatforms = "SectionDetailPlatforms"
let kSectionDetailCast = "SectionDetailCast"
let kSectionDetailTrailers = "SectionDetailTrailers"


let kDefaultCell = "defaultCell"

let kColorEmptyStateLabel = UIColor.whiteOrBlack
