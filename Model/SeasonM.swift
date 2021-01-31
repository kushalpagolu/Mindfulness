//
//  SeasonM.swift
//  Mindfulness
//
//  Created by Kushal P on 1/20/21.
//

import Foundation
import SwiftUI
import CoreLocation

struct SeasonM: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var issues: [String]
    var recordingNames: [String]
    var color: Color
    var isPageView: Bool
    var seasonName: Season
    enum Season: String, CaseIterable, Codable {
        case spring = "Spring"
        case winter = "Winter"
        case summer = "Summer"
        case rainy = "Rainy"
    }
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    var featureImage: Image? {
        isPageView ? Image(imageName + "_feature") : nil
    }
}
