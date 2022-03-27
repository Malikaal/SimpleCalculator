//
//  ContentView.swift
//  practice
//
//  Created by Malik A. Aziz Lubis on 23/03/22.
//

import SwiftUI

struct ContentView: View {
    @State private var fnumb:Float=0; 
    @State private var snumb:Float=0
    @State private var result:Float=0
    @State private var selection = 1
        
    
    let formatter: NumberFormatter = {
            let formatter = NumberFormatter()
            formatter.numberStyle = .decimal
            return formatter
    }()
    
    var body: some View {
        VStack {
            TextField("fnumb", value: $fnumb, formatter: formatter) .keyboardType(.numberPad)
                .font(.system(size: 50))
                .padding()
            
            Picker(selection: $selection, label: Text("")) {
                Text("x").tag(1)
                Text("÷").tag(2)
                Text("+").tag(3)
                Text("-").tag(4)
            }
            .pickerStyle(.segmented)
            .padding()
            
            TextField("snumb", value: $snumb, formatter: formatter) .keyboardType(.numberPad)
                .font(.system(size: 50))
                .padding()
            
            Button(action: {
                if selection == 1 {
                    print(fnumb * snumb)
                    result = (fnumb * snumb)
                } else if selection == 2{
                    print(fnumb / snumb)
                    result = (fnumb / snumb)
                } else if selection == 3{
                    print(fnumb + snumb)
                    result = fnumb + snumb
                } else if selection == 4{
                    print(fnumb - snumb)
                    result = fnumb - snumb
                }
                return
            }) {
                HStack {
    //                        Image(systemName: "")
    //                            .font(.title)
                    Text("=")
                        .fontWeight(.semibold)
                        .font(.title)
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.orange)
                .cornerRadius(40)
            }
            
            TextField("result", value: $result , formatter: formatter) .keyboardType(.numberPad)
                .font(.system(size: 50))
                .padding()
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
