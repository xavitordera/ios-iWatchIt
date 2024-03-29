//
//  SearchPresenter.swift
//  iWatchIt
//
//  Created by Xavi Tordera on 28/03/2020.
//  Copyright © 2020 Xavi Tordera. All rights reserved.
//
import UIKit

class SearchPresenter: BasePresenter, SearchInteractorToPresenterProtocol, SearchViewToPresenterProtocol {
    
    var search: Search?
    var recentlySeen: [RecentlySeen]?
    var lastQuery: String?
    
    // MARK: Interactor protocol
    func searchFetchSuccess(results: Root?) {
        search = Search.createFromRoot(root: results)
        if let view = getView(), let results = search?.results {
            view.onDataFetched(isEmpty: results.isEmpty)
        }
    }
    
    func searchFetchFailed(message: String?) {
        view?.showError(message: message)
    }
    
    
    func recentlySeenFetchSuccess(results: [RecentlySeen]?) {
        guard let results = results else {
            return
        }
        recentlySeen = results
        if let view = getView() {
            view.onRecentlySeenFetched(isEmpty: results.isEmpty)
        }
    }
    
    // MARK: View protocol
    
    func startFetchingData(query: String, type: MediaType) {
        guard let interactor = interactor as? SearchPresenterToInteractorProtocol else {
            searchFetchFailed(message: "app_error_generic".localized)
            return
        }
        lastQuery = query
        interactor.fetchSearch(query: query, mediaType: type)
    }
    
    func startFetchingHistory(type: MediaType) {
        guard let interactor = interactor as? SearchPresenterToInteractorProtocol else {
            return
        }
        interactor.fetchRecentlySeen(mediaType: type)
    }
    
    func contentSelected(navigationController: UINavigationController, for contentWithId: Int, and mediaType: MediaType) {
        guard let router = self.router as? SearchPresenterToRouterProtocol else { return }
        router.pushToDetailScreen(navigationController: navigationController, for: contentWithId, and: mediaType)
    }
    
    func getView() -> SearchPresenterToViewProtocol? {
        guard let view = self.view as? SearchPresenterToViewProtocol else {
            return nil
        }
        return view
    }
}
