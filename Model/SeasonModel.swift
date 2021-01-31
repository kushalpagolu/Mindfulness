//
//  SeasonsModel.swift
//  Challenge14
//
//  Created by Kushal P on 1/13/21.
//


import Foundation
import SwiftUI
import CoreLocation

struct SeasonModel: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    var isFeatured: Bool

    var category: Category
    enum Category: String, CaseIterable, Codable {
        case spring = "Spring"
        case winter = "Winter"
        case autumn = "Autumn"
        case rainy = "Rainy"
    }

    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    var featureImage: Image? {
        isFeatured ? Image(imageName + "_feature") : nil
    }

    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}

extension SeasonModel
{
    struct SeasonData{
        var name: String = ""
        var park: String = ""
        var state: String = ""
        var description: String = ""
        var isFeatured: Bool = true
        var category: Category
        enum Category: String, CaseIterable, Codable {
            case spring = "Spring"
            case winter = "Winter"
            case autumn = "Autumn"
            case rainy = "Rainy"
        }
    }
    
    var seasonData: SeasonData {
        return SeasonData(name: name, park: park, state: state, description: description, isFeatured: isFeatured, category: SeasonModel.SeasonData.Category.spring)
    }
}
