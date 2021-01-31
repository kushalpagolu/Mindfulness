//
//  ModelData.swift
//  Challenge14
//
//  Created by Kushal P on 1/7/21.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    @Published var seasondata: [SeasonModel] = load("Seasons.json")
    @Published var profile = Profile.default

    var features: [SeasonModel] {
        seasondata.filter { $0.isFeatured }
    }

    var categories: [String: [SeasonModel]] {
        Dictionary(
            grouping: seasondata,
            by: { $0.category.rawValue }
        )
    }
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

