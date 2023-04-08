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
            Button(action: {
                do{
                    //try? TikiSdk.present()
                }catch{
                    print(error)
                }
            }) {
                Text("Show Offer")
            }
            .foregroundColor(Color(red: 1, green: 0.722, blue: 0.133))
            .padding(12)
            .background(Color(red: 0.11, green: 0, blue: 0))
            .cornerRadius(8)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
