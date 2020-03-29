//
//  MoviesVC.swift
//  iWatchIt
//
//  Created by Xavi Tordera on 28/03/2020.
//  Copyright © 2020 Xavi Tordera. All rights reserved.
//

import UIKit

class MoviesVC: HomeVC {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNav(title: "Movies")
        loadData(mediaType: .movie)
    }

}
