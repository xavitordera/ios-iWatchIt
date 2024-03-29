//
//  Home.swift
//  iWatchIt
//
//  Created by Xavi Tordera on 28/03/2020.
//  Copyright © 2020 Xavi Tordera. All rights reserved.
//

enum MediaType: String {
    case movie = "movie"
    case show = "tv"
    case people = "person"
}

enum HomeSectionType {
    case Trending
    case Discover
    case TopRated
    case Watchlist
}

struct HomeSection {
    var title: String = ""
    var content: [Content]?
    var type: HomeSectionType = .Trending
}

struct Home {
    var trending: HomeSection?
    var discover: HomeSection?
    var watchlist: HomeSection?
    var topRated: HomeSection?
    
    static var homeShows = Home()
    static var homeMovies = Home()
    
    static func updateFromRoot(rootTrending: Root?, rootDiscover: Root?, rootTopRated: Root?, watchlist: [WatchlistContent]?, type: MediaType) -> Home? {
        if let rootTren = rootTrending {
            var trending = HomeSection()
            trending.content = rootTren.results
            trending.title = "home_section_trending".localized
            trending.type = .Trending
            switch type {
            case .movie:
                homeMovies.trending = trending
            case .show:
                homeShows.trending = trending
            case .people:
                break
            }
        }
        if let rootDisc = rootDiscover {
            var discover = HomeSection()
            discover.content = rootDisc.results
            discover.title = "home_section_discover".localized
            switch type {
            case .movie:
                homeMovies.discover = discover
            case .show:
                homeShows.discover = discover
            case .people:
                break
            }
        }
        
        if let rootTopRated = rootTopRated {
            var section = HomeSection()
            section.content = rootTopRated.results
            section.title = "home_section_top_rated".localized
            section.type = .TopRated
            switch type {
            case .movie:
                homeMovies.topRated = section
            case .show:
                homeShows.topRated = section
            case .people:
                break
            }
        }
        
        if let watchlist = watchlist {
            var wsHome = HomeSection()
            wsHome.title = "home_section_watchlist".localized
            wsHome.content = []
            for watchli in watchlist {
                var content = Content()
                content.id = watchli.id
                content.image = watchli.image
                content.voteAverage = watchli.voteAverage
                content.title = watchli.title
                wsHome.content?.append(content)
            }
            wsHome.type = .Watchlist
            switch type {
            case .movie:
                homeMovies.watchlist = wsHome
            case .show:
                homeShows.watchlist = wsHome
            case .people:
                break
            }
        }
        switch type {
        case .movie:
            return homeMovies
        case .show:
            return homeShows
        case .people:
            return nil
        }
    }
}
