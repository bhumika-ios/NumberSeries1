//
//  create.swift
//  NumberSeries
//
//  Created by Bhumika Patel on 22/02/23.
//

import SwiftUI

struct create: View {
    @State private var numOne: Int = 1
    @State private var numTwo: Int = 0

    private static let formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter
    }()

//    private var result: Int {
//        numOne + numTwo
//    }

    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section {
                        TextField("Number One", value: $numOne, formatter: Self.formatter)
                            .keyboardType(.numberPad)

//                        TextField("Number Two", value: $numTwo, formatter: Self.formatter)
//                            .keyboardType(.numberPad)
                    }

//                    Section {
//                        Text("Result: \(result)")
//
//                        }
                    }
                
                //
               
                ScrollView{
                    
                    ForEach(1 ... numOne, id:\.self) { i in
                 
                            Text("\(i.description)")
                
                    }
                    Button(action: {
                        self.numOne += 1
                    }, label: {
                        //Text("counter \(numOne.description)")
                    })
                    
                }
                //
             
            }
        }
    }
    func number(){
        ScrollView{
            
            ForEach(1 ... numOne, id:\.self) { i in
                Text("\(i.description)")
            }
            Button(action: {
                self.numOne += 1
            }, label: {
                Text("counter \(numOne.description)")
            })
            
        }
    }
}
//ForEach(1 ..< numOne, id:\.self) { i in
//    Text("\(i.description)")
//}
//Button(action: {
//    self.numOne += 1
//}, label: {
//    Text("counter \(numOne.description)")
//})
