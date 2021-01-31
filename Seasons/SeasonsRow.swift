//
//  SeasonsRow.swift
//  Challenge14
//
//  Created by Kushal P on 1/13/21.
//

import SwiftUI

struct SeasonsRow: View {
    @EnvironmentObject var seasonData: ModelData
    var categoryName: String
    var items: [SeasonModel]
    var body: some View {
            VStack(alignment: .leading) {
                Text(self.categoryName)
                    .font(.headline)
                    .padding(.leading, 15)
                    .padding(.vertical, 8.0)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(self.items) { season in
                            SeasonItem(season: season)
                        }
                    }
                }
            .frame(height: 185)
        }
        }
    }
struct SeasonsRow_Previews: PreviewProvider {
    static var seasondata = ModelData().seasondata
    static var previews: some View {
        NavigationView{
        SeasonsRow(categoryName: seasondata[3].category.rawValue, items: Array(seasondata.prefix(4)))
            .environmentObject(ModelData())
        }
    }
}
