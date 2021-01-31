//
//  LocationRow.swift
//  Challenge14
//
//  Created by Kushal P on 1/13/21.
//

import SwiftUI

struct LocationRow: View {
    var locationdata: SeasonModel
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Place, Order!"/*@END_MENU_TOKEN@*/)
    }
}

struct LocationRow_Previews: PreviewProvider {
    static var landmarks = ModelData().seasondata
    static var previews: some View {
        LocationRow(locationdata: landmarks[0])
    }
}
