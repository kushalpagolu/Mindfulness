
//  IssueData.swift
//  Challenge14
//
//  Created by Kushal P on 1/15/21.
//

import Foundation
import SwiftUI
import MapKit

struct IssueData: Identifiable {
    let id: UUID
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var recordingName: String
    var color:Color
    var featured: Bool
    var seasons: [String]
    var issues: [String]
    var recordingNames: [String]
    var imageName: String
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, recordingName: String, color: Color,featured: Bool, seasons: [String], issues: [String], recordingNames: [String], imageName: String) {
        self.id = id
        self.title = title
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
        self.recordingName = recordingName
        self.color = color
        self.seasons = seasons
        self.issues = issues
        self.recordingNames = recordingNames
        self.featured = featured
        self.imageName = imageName
    }
   
}
extension IssueData
{
    static var data: [IssueData] {
        [
            IssueData(title: "Anxiety", attendees: ["Cathy", "Daisy", "Simon", "Jonathan"], lengthInMinutes: 10, recordingName: "Find your Inner PEACE", color: Color("Design"), featured: true, seasons: ["Spring", "Autumn", "Winter", "Rainy"], issues: ["Anxiety", "Depression", "Stress", "PTSD", "BiPolar", "OCD", "Dementia"], recordingNames: ["Find your Inner PEACE", "Let go your CONTROL", "Destiny Is All"], imageName: "turtlerock_feature"),
            IssueData(title: "Stress", attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"], lengthInMinutes: 8, recordingName: "Let go your CONTROL", color: Color("App Dev"), featured: true, seasons: ["Spring", "Autumn", "Winter", "Rainy"], issues: ["Anxiety", "Depression", "Stress", "PTSD", "BiPolar", "OCD", "Dementia"], recordingNames: ["Find your Inner PEACE", "Let go your CONTROL", "Destiny Is All"], imageName: "rainy_feature"),
            IssueData(title: "Depression", attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"], lengthInMinutes: 9, recordingName: "Find your Inner PEACE", color: Color("Web Dev"), featured: true, seasons: ["Spring", "Autumn", "Winter", "Rainy"], issues: ["Anxiety", "Depression", "Stress", "PTSD", "BiPolar", "OCD", "Dementia"], recordingNames: ["Find your Inner PEACE", "Let go your CONTROL", "Destiny Is All"], imageName: "stmarylake_feature")
        ]
     }
}
extension IssueData
{
    struct Data {
        var title: String = ""
        var attendees:[String] = []
        var lengthInMinutes: Double = 1.0
        var recordingName: String = ""
        var color: Color = .random
        var featured: Bool = true
        var seasons: [String] = []
        var issues: [String] = []
        var recordingNames: [String] = []
        var imageName: String = ""
    }
    var data: Data {
        return Data(title: title, attendees: attendees, lengthInMinutes: Double(lengthInMinutes), recordingName: recordingName, color: color, featured: featured , seasons: seasons, issues: issues, recordingNames: recordingNames, imageName: imageName)
    }
}

