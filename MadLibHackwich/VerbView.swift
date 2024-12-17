//
//  ContentView.swift
//  MadLibHackwich
//
//  Created by Wood, Aiden - Student on 9/30/24.
//

import SwiftUI

struct VerbView: View {
    
    @Environment(myClass.self) var madLibData
    
    var body: some View {
        
        @Bindable var madLibData = madLibData
        
        NavigationStack {
            VStack {
                TextField("Enter a Verb:", text: $madLibData.verb)
                NavigationLink(destination: AdjectiveView()) { Text("Next")}
            }
            }
        
        .padding()
    }
}

#Preview {
    @State var madLibData = myClass()
   return VerbView()
        .environment(madLibData)
}
