//
//  ContentView.swift
//  MadLibHackwich
//
//  Created by Wood, Aiden - Student on 9/30/24.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(myClass.self) var madLibData
    
    var body: some View {
        
        @Bindable var madLibData = madLibData
        
        NavigationStack {
            VStack {
                TextField("Enter a Noun:", text: $madLibData.noun)
                NavigationLink(destination: VerbView()) { Text("Next")}
            }
            }
        
        .padding()
    }
}

#Preview {
    @State var madLibData = myClass()
   return ContentView()
        .environment(madLibData)
}
