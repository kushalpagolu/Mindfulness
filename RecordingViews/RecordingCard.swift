//
//  RecordingCard.swift
//  Challenge14
//
//  Created by Kushal P on 1/17/21.
//

import SwiftUI

struct RecordingCard: View {
    @State private var isPresented = false

    
    
    @State private var data: IssueData.Data = IssueData.Data()
    @State var issueData: IssueData
    var body: some View {
        List{
            Section(){
                Label("\(issueData.recordingName)", systemImage: "timer")
                    .font(.headline)
                    .foregroundColor(.accentColor)
                    .accessibilityLabel(Text("Core Strength"))
                    .onTapGesture {
                        isPresented = true
                        data = issueData.data
                        //SummaryView1(issue: $data)
                        self.issueData.recordingNames = issueData.recordingNames
                    }.listRowBackground(self.issueData.recordingNames == issueData.recordingNames ? Color.red : Color(UIColor.systemGroupedBackground))
                
                HStack {
                    Text("Minutes of Recording")
                        .fullScreenCover(isPresented: $isPresented) {
                            SummaryView1(issue: $data)
                                }
                    Spacer()
                    Label("\(issueData.lengthInMinutes)", systemImage: "clock")
                        .padding(.trailing, 20)
                        .accessibilityElement(children: .ignore)
                        .accessibilityLabel(Text("Recording length"))
                        .accessibilityValue(Text("\(issueData.lengthInMinutes) minutes"))
                        }
                HStack {
                    Label("Play Sample", systemImage: "play")
                    Spacer()
                       }
            }
        }
    }
}

struct RecordingCard_Previews: PreviewProvider {
    static var issueData = IssueData.data[0]
    static var previews: some View {
        RecordingCard(issueData: issueData)
            .previewLayout(.fixed(width: 400, height: 130))

    }
}
