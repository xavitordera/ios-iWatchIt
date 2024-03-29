//
//  HomeProtocol.swift
//  iWatchIt
//
//  Created by Xavi Tordera on 28/03/2020.
//  Copyright © 2020 Xavi Tordera. All rights reserved.
//

import UIKit

protocol HomeViewToPresenterProtocol: BaseViewToPresenterProtocol{
    var home: Home? { get set }
    func startFetchingData(type: MediaType)
    func contentSelected(navigationController: UINavigationController, for contentWithId: Int, and mediaType: MediaType)
}

protocol HomePresenterToViewProtocol: BasePresenterToViewProtocol{
    func onDataFetched()
}

protocol HomePresenterToRouterProtocol: BasePresenterToRouterProtocol {
    func pushToDetailScreen(navigationController: UINavigationController, for contentWithId: Int, and mediaType: MediaType)
}

protocol HomePresenterToInteractorProtocol: BasePresenterToInteractorProtocol {
    func fetchTrending(type: MediaType, timeWindow: TimeWindow)
    func fetchDiscover(type: MediaType)
    func fetchTopRated(type: MediaType)
    func fetchWatchlist(type: MediaType)
}

protocol HomeInteractorToPresenterProtocol: BaseInteractorToPresenterProtocol {
    func trendingFetchSuccess(trending: Root?)
    func trendingFetchFailed(message: String?)
    func discoverFetchSuccess(discover: Root?)
    func discoverFetchFailed(message: String?)
    func topRatedFetchSuccess(topRated: Root?)
    func topRatedFetchFailed(message: String?)
    func watchlistFetched(watchlist: [WatchlistContent]?)
}
