//
//  RecordingLabel.swift
//  Mindfulness
//
//  Created by Kushal P on 1/18/21.
//

import SwiftUI

struct RecordingLabel: View {
    @State var issueData: IssueData
    @State var fruits: [String] = IssueData.Data().recordingNames
    @State private var data: IssueData.Data = IssueData.Data()

    @State var selectedFruit: String?
    @State private var isPresented = false

    var body: some View {
        //print(names)
        ForEach(0 ..< issueData.recordingNames.capacity){ key in
            //Text(issueData.recordingNames[key])
            Label("\(issueData.recordingNames[key])", systemImage: "timer")
            Button("", action: {
                isPresented = true
                data = issueData.data
            })
        }.fullScreenCover(isPresented: $isPresented) {
                SummaryView1(issue: $data)
        }
            //Text(IssueData.Data().recordingNames[key].capitalized)
            HStack {
                Text("Minutes of Recording")
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

struct RecordingLabel_Previews: PreviewProvider {
    static var issueData = IssueData.data[0]
    static var previews: some View {
        RecordingLabel(issueData: issueData)
            .previewLayout(.fixed(width: 400, height: 60))

    }
}
