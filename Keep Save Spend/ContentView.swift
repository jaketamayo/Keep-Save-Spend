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
            HStack {
                TextField("Enter Amount", text: $amount)
                    .keyboardType(.numberPad)
            }.modifier(customViewModifier(roundedCornes: 6, startColor: Color("BrightGreen"), endColor: Color("AquaBlue") , textColor: .white))
            
                .padding()
            VStack {
                Button("Calculate"){
                    calculate()
                }.buttonStyle(.bordered)
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
        //If user does not enter a valid amount,we reset and exit
        guard let value = Double(amount) else {
            keep = String(0.0)
            save = String(0.0)
            spend = String(0.0)
            return
        }
        //User enters a valid amount we continue and calcuate the amount entered.
        let needPart = 0.5
        let savePart = 0.3
        let spendingPart = 0.2
        
        //Calculating the amount here
        //Still need to format to only 2 decimal places
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
