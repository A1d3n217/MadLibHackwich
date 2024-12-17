//
//  MadLibHackwichApp.swift
//  MadLibHackwich
//
//  Created by Wood, Aiden - Student on 9/30/24.
//

import SwiftUI

@main
struct MadLibHackwichApp: App {
    
    @State var madLibData = myClass()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(madLibData)
        }
    }
}
