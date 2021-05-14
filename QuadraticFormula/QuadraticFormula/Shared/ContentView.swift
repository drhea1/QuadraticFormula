//
//  ContentView.swift
//  Shared
//
//  Created by Derek Rhea on 2/8/21.
//
//  Program to find the error between different quadratic formulas where a = 1, b = 1, and c = 10^nTHState

import SwiftUI



struct ContentView: View {
    
    @State var nTHState: Double = 1.0
    @State var quadratic = QuadraticFormula()
    @State var normMinus: Double = 1.0
    @State var normPlus: Double = 1.0
    @State var weirdMinus: Double = 1.0
    @State var weirdPlus: Double = 1.0
    
    var body: some View {
        Text("Quadratic Formula - Error Variation Calculator")
            .padding()
        Button("Increase n by 1", action:{self.increaseN()})
            .padding()
        Text("a = 1, b = 1, c = 10^-n")
            .padding()
        Text("n = " + String(nTHState))
            .padding()
        Text("x Val Normal Quadratic Minus: " + String(normMinus))
            .frame(width:400)
            .lineLimit(1)
        Text("x Val Normal Quadratic Plus: " + String(normPlus))
            .frame(width:400)
            .lineLimit(1)
        Text("x Val Weird Quadratic Minus: " + String(weirdMinus))
            .frame(width:400)
            .lineLimit(1)
        Text("x Val Weird Quadratic Plus: " + String(weirdPlus))
            .frame(width:400)
            .lineLimit(1)
        
        
        

    }
    
    func increaseN() {
        nTHState += 1.0
        let nPower: Double = pow(10,-nTHState)
        quadratic.modifyVariables(aNew: 1.0, bNew: 1.0, cNew: nPower)
        
        print("nPower: " + String(nPower))
        
        normMinus = quadratic.normalQuadraticMinus()
        normPlus = quadratic.normalQuadraticPlus()
        weirdMinus = quadratic.weirdQuadraticMinus()
        weirdPlus = quadratic.weirdQuadraticPlus()
        
        print("normMinus: " + String(normMinus))
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .frame(width: 1.0)
            .environment(\.sizeCategory, .large)
            .padding(.bottom, 3.977)
    }
}
