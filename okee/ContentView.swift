//
//  ContentView.swift
//  okee
//
//  Created by Md Alishan Ali on 13/11/24.
//

import SwiftUI
import DeviceActivity
import FamilyControls

struct ContentView: View {
    @State private var context: DeviceActivityReport.Context = .init(rawValue: "Total Activity")

    @State private var filter = DeviceActivityFilter(
        segment: .daily(
            during: Calendar.current.dateInterval(
               of: .day, for: .now
            )!
        ),
        users: .all,
        devices: .init([.iPhone, .iPad, .mac])
    )
    
    
    
    
    var body: some View {
        ZStack {
            DeviceActivityReport(context, filter: filter)
            Spacer()
//            ShieldView()
//            ScreenTimeSelectAppsContentView(model: ScreenTimeSelectAppsModel())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
