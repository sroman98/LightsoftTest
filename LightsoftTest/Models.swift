//
//  Models.swift
//  LightsoftTest
//
//  Created by Sandra Román on 01/05/21.
//

import Foundation

public enum BannerTypes {
    case banner
    case subtitledBanner
    case splitBanner
}

public class Banner {
    let type: BannerTypes
    let bgImageName: String
    let title: String
    
    init(bgImageName: String, title: String) {
        self.type = .banner
        self.bgImageName = bgImageName
        self.title = title
    }
    
    init(bgImageName: String, title: String, type: BannerTypes) {
        self.type = type
        self.bgImageName = bgImageName
        self.title = title
    }
}

public class SubtitledBanner: Banner {
    let subtitle: String
    
    init(bgImageName: String, title: String, subtitle: String) {
        self.subtitle = subtitle
        super.init(bgImageName: bgImageName, title: title, type: .subtitledBanner)
    }
}

public class SplitBanner: Banner {
    let bgImageName2: String
    let title2: String
    
    init(bgImageName: String, title: String, bgImageName2: String, title2: String) {
        self.bgImageName2 = bgImageName2
        self.title2 = title2
        super.init(bgImageName: bgImageName, title: title, type: .splitBanner)
    }
}


public let banners: [Banner] = [SplitBanner(bgImageName: "image3", title: "BLUSAS", bgImageName2: "image4", title2: "JEANS"),
                                SubtitledBanner(bgImageName: "image1", title: "ZONA DE CONFORT", subtitle: "Los looks más cómodos para esta temporada."),
                                Banner(bgImageName: "image", title: "VESTIDOS"),
                                SubtitledBanner(bgImageName: "image2", title: "PARA OCASIONES ESPECIALES", subtitle: "Porque siempre habrá una ocasión que lo amerite."),
                                SubtitledBanner(bgImageName: "image5", title: "MOVING FORWARD TOGETHER", subtitle: "Los looks más frescos para esta temporada, lucidos por protagonistas culturales de todo el mundo.")]

