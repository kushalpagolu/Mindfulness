//
//  SummaryView.swift
//  Challenge14
//
//  Created by Kushal P on 1/16/21.
//

import SwiftUI

struct SummaryView: View{
    @State private var isPresented = false
    @State private var seasonData: SeasonModel.SeasonData = SeasonModel.SeasonData(category: SeasonModel.SeasonData.Category.spring)
    @State private var newAttendee = ""
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView {
            List{
                Section(header: Text("Your Order Summary")){
                    TextField("Season Selected", text: $seasonData.name)
                    TextField("Issues Selected", text: $seasonData.name)
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




struct SummaryView_Previews: PreviewProvider {
    static var previews: some View {
        SummaryView()
    }
}
