//
//  SummaryView1.swift
//  Mindfulness
//
//  Created by Kushal P on 1/18/21.
//

import SwiftUI

struct SummaryView1: View {
    @Binding var issue: IssueData.Data
    
    
    
    @State private var isPresented = false
    @State private var seasonData: SeasonModel.SeasonData = SeasonModel.SeasonData(category: SeasonModel.SeasonData.Category.spring)
    @State private var newAttendee = ""
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView {
            List{
                Section(header: Text("Your Order Summary")){
                    TextField("Season Selected", text: $issue.title)
                    TextField("Issues Selected", text: $issue.imageName)
                    TextField("Recording Selected", text: $seasonData.name)
                    }
                Section(header: Text("COMMENTS")) {
                        Text("Category")
                    }
                    HStack {
                        TextField("Additional Comments", text: $newAttendee)
                        Button(action: {
                        }) {
                            Image(systemName: "plus.circle.fill")
                                .accessibilityLabel(Text("Add Additional Comments"))
                        }
                        .disabled(newAttendee.isEmpty)
                    }
                }
                .listStyle(InsetGroupedListStyle())
                .navigationBarItems(trailing: Button("Cancel") {
                                        presentationMode.wrappedValue.dismiss()
                    
                })
        }
    }
}

struct SummaryView1_Previews: PreviewProvider {
    static var previews: some View {
        SummaryView1(issue: .constant(IssueData.data[1].data))
    }
}
