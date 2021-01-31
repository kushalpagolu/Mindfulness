//
//  SeasonList.swift
//  Challenge14
//
//  Created by Kushal P on 1/13/21.
//

import SwiftUI

struct SeasonList: View {
    @EnvironmentObject var seasonData: ModelData
    var body: some View {
        NavigationView{
                List {
            ForEach(ModelData().categories.keys.sorted(), id: \.self){ key in
            SeasonsRow(categoryName: key, items: ModelData().categories[key]!)
            }
            .padding(.bottom, 20)
        }
        .listStyle(InsetListStyle())
                .navigationTitle("Pick A Place From a SEASON")
    }
}
}

struct SeasonList_Previews: PreviewProvider {
    static var previews: some View {        
            SeasonList()
                .environmentObject(ModelData())        
    }
}
