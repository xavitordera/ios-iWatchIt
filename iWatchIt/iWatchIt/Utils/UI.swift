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
let kDiscoverVC = "DiscoverVC"
let kSearchInfoVC = "SearchInfoVC"
let kDiscoverResultsVC = "DiscoverResultsVC"


let kHomeTrendingSection = "Trending"
let kHomeDiscoverSection = "You might like..."
let kHomeWatchlistSection = "Your watchlist"
let kHomeTopRatedSection = "Top rated"


var kStoryboardHome: UIStoryboard{
    return UIStoryboard(name:"Home", bundle: Bundle.main)
}

var kStoryboardDetail: UIStoryboard{
    return UIStoryboard(name:"Detail", bundle: Bundle.main)
}


let kLogoAnimation = "ic_loading_splash"
let kTabMoviesImg = UIImage(named:"ic_tab_movies")
let kTabShowsImg = UIImage(named:"ic_tab_shows")
let kTabDiscoverImg = UIImage(systemName: "magnifyingglass")
let kEmptyStateMedia = UIImage(named: "emptyStateMedia")
let kEmptyStateUserMale = UIImage(named: "ic_empty_user_male")
let kEmptyStateUserFemale = UIImage(named: "ic_empty_user_female")
let kMovieStar = UIImage(named: "ic_movie_star")
let kEmptyStar = UIImage(named: "ic_star_empty")
let kShare = UIImage(named: "ic_share")
let kWatchlistAdd = UIImage(named: "ic_watchlist_add")
let kWatchlistAdded = UIImage(named: "ic_watchlist_added")
let kPlay = UIImage(named: "ic_play")
let kStarEmpty = UIImage(systemName: "star")
let kStarHalf = UIImage(systemName: "star.lefthalf.fill")
let kStarFilled = UIImage(systemName: "star.fill")
let kPlusCircle = UIImage(systemName: "plus.circle")
let kMinusCircle = UIImage(systemName: "minus.circle")
let kCheckmark = UIImage(systemName: "checkmark")
let kTMBDLogo = UIImage(named: "tmdb")

let kHeightHomeSectionsInfiniteCarousel: CGFloat = 280
let kHomeSectionsInfiniteCarouselImageSize: ImageSize = .poster(size: PosterSize.medium)

let kHeightDetailSectionsHeader: CGFloat = 260
let kHeightDetailSectionsPlatforms: CGFloat = 160
let kHeightDetailSectionsCast: CGFloat = 215
let kHeightDetailSectionsVideo: CGFloat = 290

let kHeightDetailSectionsSimilar: CGFloat = 200

let kHeightDiscoverSections: CGFloat = 45
let kHeightBannerAd: CGFloat = 75

let kDefaultCell = "defaultCell"
let kInfiniteCarouselTVC = "InfiniteCarouselTVC"
let kInfiniteCarouselCVC = "InfiniteCarouselCVC"
let kDetailCarouselCVC = "DetailCarouselCVC"
let kDetailCarouselTrailerCVC = "DetailCarouselTrailerCVC"
let kDetailCarouselPlatformCVC = "DetailCarouselPlatformCVC"
let kDetailCarouselCastCVC = "DetailCarouselCastCVC"
let kHorizontalCarouselCVC = "HorizontalCarouselCVC"
let kDetailHeaderCVC = "DetailHeaderCVC"
let kDetailOverviewCVC = "DetailOverviewCVC"
let kSectionHeader = "SectionHeader"
let kAdBannerCVC = "BannerAdCVC"

let kDiscoverHeaderTHV = "DiscoverHeaderTVC"
let kDiscoverSearchTVC = "DiscoverSearchTVC"
let kDiscoverPeopleTVC = "DiscoverPeopleTVC"


let kSectionDetailHeader = "SectionDetailHeader"
let kSectionDetailOverview = "SectionDetailOverview"
let kSectionDetailPlatforms = "SectionDetailPlatforms"
let kSectionDetailCast = "SectionDetailCast"
let kSectionDetailVideos = "SectionDetailVideos"
let kSectionCopyright = "SectionCopyright"
let kSectionDetailSimilar = "SectionDetailSimilar"
let kSectionDetailAffiliate = "SectionDetailAffiliate"

let kSectionDiscoverKeywords = "SectionDiscoverKeywords"
let kSectionDiscoverGenre = "SectionDiscoverGenre"
let kSectionDiscoverPeople = "SectionDiscoverPeople"


let kColorEmptyStateLabel = UIColor.whiteOrBlack.withAlphaComponent(0.6)
let kColorEmptyStatePlatforms = UIColor.white.withAlphaComponent(0.6)


// Platfroms
let kNetflix = UIImage(named: "Netflix")
let kAmazonPrimeVideo = UIImage(named: "Amazon Prime Video")
let kAmazonInstantVideo = UIImage(named: "Amazon Instant Video")
let kAppleTV = UIImage(named: "Apple Tv+")
let kiTunes = UIImage(named: "iTunes")
let kYouTubePremium = UIImage(named: "YouTube Premium")
let kDisneyPlus = UIImage(named: "Disney Plus")
let kHulu = UIImage(named: "Hulu")
let kAtomTickets = UIImage(named: "Atom Tickets")
let kCBS = UIImage(named: "CBS")
let kDCUniverse = UIImage(named: "DC Universe")
let kHBO = UIImage(named: "HBO")
let kDiscoveryChannel = UIImage(named: "Discovery Channel")
let kFandangoMovies = UIImage(named: "Fandango Movies")
let kFox = UIImage(named: "Fox")
let kNBC = UIImage(named: "NBC")
let kNickelodeon = UIImage(named: "Nickelodeon")
let kSyfy = UIImage(named: "Syfy")
let kHBOMax = UIImage(named: "HBO Max")
let kPeacock = UIImage(named: "Peacock")
