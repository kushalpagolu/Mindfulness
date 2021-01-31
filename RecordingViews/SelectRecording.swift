//
//  SelectRecording.swift
//  Challenge14
//
//  Created by Kushal P on 12/22/20.
//

import SwiftUI

struct SelectRecording: View {
    @State private var isPresented = false
    @EnvironmentObject var seasonData: ModelData
    var body: some View {
        List{
            Section(){
                HStack {
                    Label("Play", systemImage: "play")
                    Spacer()
                       }
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

struct SelectRecording_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            SelectRecording()
            .environmentObject(ModelData())
        }
    }
}
