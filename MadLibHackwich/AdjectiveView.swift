//
//  ContentView.swift
//  MadLibHackwich
//
//  Created by Wood, Aiden - Student on 9/30/24.
//

import SwiftUI

struct AdjectiveView: View {
    
    @Environment(myClass.self) var madLibData
    
    var body: some View {
        
        @Bindable var madLibData = madLibData
        
        NavigationStack {
            VStack {
                TextField("Enter an Adjective:", text: $madLibData.adjective)
                NavigationLink(destination: StoryView()) { Text("Next")}
            }
            }
        
        .padding()
    }
}

#Preview {
    @State var madLibData = myClass()
   return AdjectiveView()
        .environment(madLibData)
}
