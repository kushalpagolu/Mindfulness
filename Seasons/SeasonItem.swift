//
//  SeasonCard.swift
//  Challenge14
//
//  Created by Kushal P on 1/12/21.
//

import SwiftUI

struct SeasonItem: View {
    @EnvironmentObject var seasonData: ModelData
    var season: SeasonModel
    var body: some View {
            VStack(alignment: .leading) {
                    NavigationLink(destination: IssuesView(issueData: IssueData.data)){
                    season.image
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 155, height: 155)
                        .cornerRadius(5)
                    }
                    Text(season.state)
                        .foregroundColor(.primary)
                        .font(.caption)
                }
            .padding(.leading, 15)
        }
        
    }


struct SeasonItem_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        SeasonItem(season: ModelData.init().seasondata[11])
            .environmentObject(ModelData())
    }
}
}
