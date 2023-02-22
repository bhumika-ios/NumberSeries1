//
//  ContentView.swift
//  NumberSeries
//
//  Created by Bhumika Patel on 14/11/22.
//

import SwiftUI
//@State var dig = ""
struct ContentView: View {
    
    @State private var textField: Int = 1
    @State private var numberFormatter = NumberFormatter()
    @State var number: [String] = [""]
    var body: some View {
      NavigationView {
          VStack(alignment:.center){
              VStack{
                  HStack{
                      TextField("", value: $textField,formatter: numberFormatter)
                          
                          .padding()
                          .background(Color.gray.opacity(0.3).cornerRadius(10))
                          .foregroundColor(.red)
                          .font(.headline)
                      
                      Button(action: {
                          //addNumber()
                          Nuber()
                      }, label:{
                          Text("Add")
                              .padding()
                              .frame(width: 70)
                              .foregroundColor(.black)
                              .background(Color.blue.opacity(0.7).cornerRadius(10))
                      })
                  }
                
              

                  }
              }
              Spacer()
          }
          .navigationTitle("NumberSeries")
          
      }
      
    func Nuber(){
        VStack{
            List{
                HStack{
                    ForEach(1..<textField) { index in
                        
                        Circle()
                            .fill(.gray)
                            .frame(width: 30)
                            .overlay{
                                Text("\(number[index])")
                            }
                    }
//
//
//                        //
//                        // .multilineTextAlignment(.center)
//                    }
                    //                  ForEach(0..<5){ index in
                    //                      Circle()
                    //                          .frame()
                    //                  }
                }
            }
        }
    }
//    func NumberSeries() {
//        let enterNumber = Int(textField.text!)
//        for number in index...enterNumber!{
//            print(number)
//
//            displayArray.append(number)
//           // displayArray.append(displayArray.last! + 1)
//              //  tblView.reloadData()
//
//
//        }
//    }
//    func addNumber(){
//        number.append(textField)
//    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
class NumbersOnly: ObservableObject {
    @Published var value = "" {
        didSet {
            let filtered = value.filter { $0.isNumber }
            
            if value != filtered {
                value = filtered
            }
        }
    }
}
