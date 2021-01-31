//
//  IssuesCard.swift
//  Challenge14
//
//  Created by Kushal P on 1/15/21.
//

import SwiftUI

import SwiftUI

struct IssueCard: View {
    @State var issueData: IssueData
    @State var data: IssueData.Data = IssueData.Data()
    var body: some View {
        VStack(alignment: .leading) {
            Text(issueData.title)
                .font(.headline)
            Spacer()
            HStack {
                Label("\(issueData.attendees.count)", systemImage: "person.3")
                    .accessibilityElement(children: .ignore)
                    .accessibilityLabel(Text("Attendees"))
                    .accessibilityValue(Text("\(issueData.attendees.count)"))

            }
            .font(.caption)
            
        }
        .padding()
        .foregroundColor(issueData.color.accessibleFontColor)
    }
}

struct IssuesCard_Previews: PreviewProvider {
    static var issueData = IssueData.data[0]
    static var previews: some View {
        NavigationView {
            IssueCard(issueData: issueData)
                    .background(issueData.color)
                .previewLayout(.fixed(width: 400, height: 60))
        }
        
    }
}
