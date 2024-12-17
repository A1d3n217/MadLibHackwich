//
//  StoryView.swift
//  MadLibHackwich
//
//  Created by Wood, Aiden - Student on 10/1/24.
//

import SwiftUI

struct StoryView: View {
    
    @Environment(myClass.self) var madLibData
    
    var body: some View {
        Text("Once there was a ")
        Text("\(madLibData.adjective)")
            .foregroundStyle(.red)
        Text("\(madLibData.noun)")
            .foregroundStyle(.blue)
        Text("who liked to")
        Text("\(madLibData.verb).")
            .foregroundStyle(.green)
    }
}

#Preview {
 @State var madLibData = myClass()
    return StoryView()
         .environment(madLibData)
}
