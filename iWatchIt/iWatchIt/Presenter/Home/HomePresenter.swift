//
//  HomePresenter.swift
//  iWatchIt
//
//  Created by Xavi Tordera on 28/03/2020.
//  Copyright © 2020 Xavi Tordera. All rights reserved.
//
import UIKit

class HomePresenter: BasePresenter, HomeInteractorToPresenterProtocol, HomeViewToPresenterProtocol {
    
    var home: Home?
    
    // MARK: Interactor protocol
    func trendingFetchSuccess(trending: Root?) {
        home = Home.updateFromRoot(rootTrending: trending, rootDiscover: nil)
        if let view = getView() {
            view.onDataFetched()
        }
    }
    
    func trendingFetchFailed(message: String?) {
        view?.showError(message: message)
    }
    
    func discoverFetchSuccess(discover: Root?) {
        home = Home.updateFromRoot(rootTrending: nil, rootDiscover: discover)
        if let view = getView() {
            view.onDataFetched()
        }
    }
    
    func discoverFetchFailed(message: String?) {
        view?.showError(message: message)
    }
    
    // MARK: View protocol
    
    func startFetchingData(type: MediaType) {
        guard let interactor = interactor as? HomePresenterToInteractorProtocol else {
            discoverFetchFailed(message: "app_error_generic".localized)
            trendingFetchFailed(message: "app_error_generic".localized)
            return
        }
        interactor.fetchTrending(type: type, timeWindow: TimeWindow.week)
        interactor.fetchDiscover(type: type)
    }
    
    func contentSelected(navigationController: UINavigationController, for contentWithId: Int, and mediaType: MediaType) {
        guard let router = self.router as? HomePresenterToRouterProtocol else { return }
        router.pushToDetailScreen(navigationController: navigationController, for: contentWithId, and: mediaType)
    }
    
    func getView() -> HomePresenterToViewProtocol? {
        guard let view = self.view as? HomePresenterToViewProtocol else {
            return nil
        }
        return view
    }
}
