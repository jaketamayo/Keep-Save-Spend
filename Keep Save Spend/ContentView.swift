//
//  ContentView.swift
//  Keep Save Spend
//
//  Created by Jacob Tamayo on 4/8/22.
//

import SwiftUI

struct ContentView: View {
    @State private var amount = ""
    var fiftyPercent = 0.5
    var thirtyPercent = 0.3
    var twentyPercent = 0.2

    
    var body: some View {
        VStack {
            TextField("Enter Amount", text: $amount)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)
            
            Button("Calculate") {
                var save = (Double(amount) ?? 0) * fiftyPercent
            }
        }
        
        .padding()
     
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
