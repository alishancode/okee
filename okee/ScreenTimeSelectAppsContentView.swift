//
//  ScreenTimeSelectAppsContentView.swift
//  okee
//
//  Created by Md Alishan Ali on 19/11/24.
//

import SwiftUI
import FamilyControls

class ScreenTimeSelectAppsModel: ObservableObject {
    @Published var activitySelection = FamilyActivitySelection()

//    activitySelection valu
//
    init() { }
}


struct ScreenTimeSelectAppsContentView: View {
//    we have to store thsi
    

    @State private var pickerIsPresented = false
    @ObservedObject var model: ScreenTimeSelectAppsModel
    

//    print(model)
//    on select ==> trigger some function
    
//    func s
    
    var body: some View {
        Button {
            pickerIsPresented = true
        } label: {
            Text("Select Apps")
        }
        .familyActivityPicker(
            isPresented: $pickerIsPresented,
            selection: $model.activitySelection
            
        )
    }
}

#Preview {
//    ScreenTimeSelectAppsContentView()
}
