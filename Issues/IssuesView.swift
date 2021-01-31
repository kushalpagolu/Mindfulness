//
//  IssuesView.swift
//  Challenge14
//
//  Created by Kushal P on 1/16/21.
//

import SwiftUI

import SwiftUI

struct IssuesView: View {
    @EnvironmentObject var modelData: ModelData
    var issueData: [IssueData]
    var body: some View {
        List {
            ForEach(issueData) { scrum in
                NavigationLink(destination: RecordingList(issueData: IssueData.data))
                {
                IssueCard(issueData: scrum)
            }
            .listRowBackground(scrum.color)
        }
        }
        .navigationTitle("Select Issues")
    }
}


struct IssuesView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            IssuesView(issueData: IssueData.data)
                .environmentObject(ModelData())
        }
    }
}
