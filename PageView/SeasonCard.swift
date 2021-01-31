//
//  SeasonCard.swift
//  Challenge14
//
//  Created by Kushal P on 1/13/21.
//

import SwiftUI

struct SeasonCard: View {
    @EnvironmentObject var seasonData: ModelData
    var seasons: SeasonModel
    var body: some View {
            seasons.featureImage?
                .resizable()
                .aspectRatio(3 / 2, contentMode: .fit)
                .overlay(TextOverlay(seasons: seasons))
}
}

struct TextOverlay: View {
    @EnvironmentObject var seasonData: ModelData
    var seasons: SeasonModel
    var gradient: LinearGradient {
        LinearGradient(
            gradient: Gradient(
                colors: [Color.black.opacity(0.9), Color.black.opacity(0)]),
            startPoint: .bottom,
            endPoint: .center)
    }

    var body: some View {
        
            ZStack(alignment: .bottomLeading) {
                Rectangle().fill(gradient)
                VStack(alignment: .leading) {
                    NavigationLink(destination: IssuesView(issueData: IssueData.data)){
                    Text(seasons.category.rawValue)
                        .font(.title)
                        .bold()
                    Text(seasons.park)
                    }
                }
                .padding()
            }
            .foregroundColor(.white)
    }
}

struct SeasonCard_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        SeasonCard(seasons: ModelData().features[2])
            .environmentObject(ModelData())
        }
    }
}
