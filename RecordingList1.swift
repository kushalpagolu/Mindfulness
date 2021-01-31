//
//  RecordingList1.swift
//  Mindfulness
//
//  Created by Kushal P on 1/19/21.
//

import SwiftUI

struct RecordingList1: View {
    @Binding var issue: IssueData
    @State private var data: IssueData.Data = IssueData.Data()
    var allowsMultipleSelection: Bool = true
    
    //isPresented flag is set to display a fullScreenCover when the value is set to TRUE.
    @State private var isPresented = false
    @EnvironmentObject var seasonData: ModelData
    @State var issueData: [IssueData]
    var body: some View {
        List{
            Section(){
                ForEach(issueData){ issueData in
                RecordingLabel(issueData: issueData)
                }.onTapGesture {
                    data = issue.data
                    isPresented = true
                }
                Divider()
                Button("Place Order", action: {
                    isPresented = true
                    data = issue.data
                })
                .padding(.trailing)
                .font(.title)
                .foregroundColor(.blue)
                .fullScreenCover(isPresented: $isPresented) {
                    SummaryView1(issue: $data)
                        }
            }
            .accessibilityElement(children: .ignore)
        }
        .navigationTitle("Available Recordings")
    }
}



struct RecordingList1_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            RecordingList1(issue: .constant(IssueData.data[0]),issueData: IssueData.data)
                .environmentObject(ModelData())
        }    }
}
