//
//  RecordingList.swift
//  Challenge14
//
//  Created by Kushal P on 1/17/21.
//

import SwiftUI

struct RecordingList: View {
    @State private var isPresented = false
    @EnvironmentObject var seasonData: ModelData
    
    @State var issueData: [IssueData]
    var body: some View {
        List{
            Section(){
                ForEach(issueData){ issueData in
                RecordingLabel(issueData: issueData)
                }
                Divider()
                Button("Place Order", action: {
                    isPresented = true
                    
                })
                .padding(.trailing)
                .font(.title)
                .foregroundColor(.blue)
                .fullScreenCover(isPresented: $isPresented) {
                    SummaryView()
                        }
            }.accessibilityElement(children: .ignore)
        }.navigationTitle("Available Recordings")
    }
}

struct RecordingList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            RecordingList(issueData: IssueData.data)
                .environmentObject(ModelData())
        }
    }
}
