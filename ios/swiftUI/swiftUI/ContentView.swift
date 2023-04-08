//
//  ContentView.swift
//  swiftUI
//
//  Created by Michael Audi on 4/8/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("iconLogo").imageScale(.large)
            Text("Let's do this shit").padding(.bottom, 24)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
