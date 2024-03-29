//
//  VideoHelper.swift
//  iWatchIt
//
//  Created by Xavi Tordera on 03/04/2020.
//  Copyright © 2020 Xavi Tordera. All rights reserved.
//
import Foundation
import UIKit
import WebKit

let kYoutubeImageURL = "https://img.youtube.com/vi/%@/hqdefault.jpg"
let kYoutubeEmbedVideoURL = "https://www.youtube.com/embed/%@"

class VideoHelper {
    class func getURLForPreview(for video: Video?) -> URL? {
        var url: URL?
        switch video?.site {
        case VideoSite.YouTube.rawValue:
            url = URL(string: String(format: kYoutubeImageURL, video?.key ?? ""))
        default:
            url = nil
        }
        return url
    }
    
    class func getVideoURLForEmbed(for video: Video?) -> String?{
        var url: String?
           switch video?.site {
           case VideoSite.YouTube.rawValue:
               url = String(format: kYoutubeEmbedVideoURL, video?.key ?? "")
           default:
               url = nil
           }
           return url
    }
}
