//
//  ContentView.swift
//  Keep Save Spend
//
//  Created by Jacob Tamayo on 4/8/22.
//

import SwiftUI

struct ContentView: View {
    @State private var amount = ""
    @State private var keep = ""
    @State private var save = ""
    @State private var spend = ""
    
    var body: some View {
        VStack {
            TextField("Enter Amount", text: $amount)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)
            Button("Calculate"){
                calculate()
            }
            .buttonStyle(.bordered)
            
            VStack {
                Text("Keep: \(keep)")
                    .padding()
                Text("Save: \(save)")
                    .padding()
                Text("Spend: \(spend)")
                    .padding()
            }
        }
        
        .padding()
     
    }
    
    private func calculate() {
        guard let value = Double(amount) else {
            keep = String(0.0)
            save = String(0.0)
            spend = String(0.0)
            return
        }

        let needPart = 0.5
        let savePart = 0.3
        let spendingPart = 0.2
        
        keep = "\(value * needPart)"
        save = "\(value * savePart)"
        spend = "\(value * spendingPart)"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
