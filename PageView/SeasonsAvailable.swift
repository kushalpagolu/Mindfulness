//
//  SeasonsAvailable.swift
//  Challenge14
//
//  Created by Kushal P on 1/6/21.
//

import SwiftUI

struct SeasonsAvailable: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showSeason = false    
    var body: some View {
      
        NavigationLink(destination: IssuesView(issueData: IssueData.data)){
            List{
                    Text("This choice represents your mood")
                        .font(.subheadline)
                        .animation(.easeInOut)
                        PageView(pages: ModelData().features.map{
                            SeasonCard(seasons: $0)})
                            .aspectRatio(3 / 2, contentMode: .fit)
                            .listRowInsets(EdgeInsets())
                    }
            .navigationTitle("PICK A SEASON")
        }
    }
}

struct SeasonsAvailable_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            SeasonsAvailable()
                .environmentObject(ModelData())
    }
}
}
