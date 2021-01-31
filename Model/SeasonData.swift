//
//  SeasonData.swift
//  Mindfulness
//
//  Created by Kushal P on 1/20/21.
//

import Foundation
import Combine

final class SeasonData: ObservableObject {
    @Published var sdata: [SeasonM] = loadData("SeasonData.json")
    
    var features: [SeasonM] {
        sdata.filter { $0.isPageView }
    }
    var categories: [String: [SeasonM]] {
        Dictionary(
            grouping: sdata,
            by: { $0.name }
        )
    }
}
func loadData<T: Decodable>(_ filename: String) -> T {
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

