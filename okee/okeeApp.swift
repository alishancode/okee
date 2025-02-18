//
//  okeeApp.swift
//  okee
//
//  Created by Md Alishan Ali on 13/11/24.
//

import SwiftUI
import FamilyControls
import DeviceActivity

@main
struct okeeApp: App {
    let center = AuthorizationCenter.shared
    
//    @State private var context: DeviceActivityReport.Context = .init(rawValue: "Total Activity")
//    @State private var filter = DeviceActivityFilter(
//        segment: .daily(
//            during: Calendar.current.dateInterval(of: .day, for: .now)!
//        ),
//        users: .all,
//        devices: .init([.iPhone])
//    )
    
    // Fix: Corrected the return type to `Void`
    func requestFamilyAuthorization() {
        Task {
            do {
                try await center.requestAuthorization(for: .individual)
            } catch {
                print("Failed to enroll Aniyah with error: \(error)")
            }
        }
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    requestFamilyAuthorization() // Request authorization when the app appears
                }
        }
    }
}
