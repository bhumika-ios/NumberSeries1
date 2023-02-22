//
//  ResultView.swift
//  NumberSeries
//
//  Created by Bhumika Patel on 16/11/22.
//

import SwiftUI

struct ResultView: View {
    let number: [Int] = [1,2,3,4,5]
    var body: some View {
        VStack{
            List{
                HStack{
                    ForEach(number.indices) { index in
                        
                        Circle()
                            .fill(.gray)
                            .frame(width: 30)
                            .overlay{
                                Text("\(number[index])")
                            }
                        
                        
                        //
                        // .multilineTextAlignment(.center)
                    }
                    //                  ForEach(0..<5){ index in
                    //                      Circle()
                    //                          .frame()
                    //                  }
                }
            }
        }
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}
