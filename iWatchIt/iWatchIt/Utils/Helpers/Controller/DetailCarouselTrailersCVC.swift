//
//  DetailCarouselCVC.swift
//  iWatchIt
//
//  Created by Xavi Tordera on 03/04/2020.
//  Copyright © 2020 Xavi Tordera. All rights reserved.
//

import UIKit

class DetailCarouselTrailerCVC: UICollectionViewCell, NibReusable {
    
    // MARK: - Properties
    var video: Video?
    
    var delegate: InfiniteCarouselCVCDelegate?
    
    @IBOutlet weak var coverImgView: UIImageView!
    
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var playImg: UIImageView!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    // MARK: - UIView
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        setupLayout()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        video = nil
        
        coverImgView.image = nil
        delegate = nil
        lblTitle.text = nil
        activityIndicator.isHidden = true
    }
    
    // MARK: - Public interface

    func configureCell(video: Video?) {
        self.video = video
        
        setupVideoCell()
    }
    
    func startLoading() {
        playImg.isHidden = true
        activityIndicator.isHidden = false
        activityIndicator.startAnimating()
    }
    
    func hideLoading() {
        playImg.isHidden = false
        activityIndicator.isHidden = true
        activityIndicator.startAnimating()
    }
    
   // MARK: - Auxiliar functions
    private func setupVideoCell() {
        guard let video = video else {
            return
        }
        
        if let videoImgUrl = VideoHelper.getURLForPreview(for: video) {
            coverImgView.imageFrom(url: videoImgUrl)
        }
        lblTitle.text = video.name
    }
    
    
    private func setupLayout() {
        lblTitle.font = .systemFont(ofSize: 12.0, weight: .light)
        lblTitle.textColor = .white
        lblTitle.numberOfLines = 0
        
        coverImgView.contentMode = .scaleAspectFit
    }
}
