//
//  graphMain.swift
//  openInApp tut
//
//  Created by apple on 17/04/24.
//

import SwiftUI
import Charts
struct MonthClicks: Identifiable {
    let id = UUID().uuidString // Generating a unique identifier
    let month: String
    let clicks: Int
}

struct graphMain: View {
    
    var data = [
            MonthClicks(month: "Jan", clicks: 34),
            MonthClicks(month: "Feb", clicks: 56),
            MonthClicks(month: "Mar", clicks: 12),
            MonthClicks(month: "Apr", clicks: 65),
            MonthClicks(month: "May", clicks: 43),
            MonthClicks(month: "Jun", clicks: 87),
            MonthClicks(month: "Jul", clicks: 51),
            MonthClicks(month: "Aug", clicks: 90),
        ]
    
    
    var body: some View {
        VStack {
            
           
            HStack(spacing: 100){
                Text("Overview")
                    .foregroundColor(.gray)
                
                ZStack {
                           HStack {
                               Text("22 Aug - 23 Aug")
                                  
                                   .padding(.leading , 5)
                               
                               Image(systemName: "clock")
                                   .foregroundColor(.gray)
                           }
                           .font(.system(size: 10))
                           // Add padding to create some space around the content
                           
                           RoundedRectangle(cornerRadius: 8) // Border radius of 8
                               .stroke(Color.gray, lineWidth: 1) // Border color and width
                               .frame(width: 123, height: 28) // Rectangle dimensions
                       }
            }
            
            GeometryReader { geometry in
                
                Chart {
                    ForEach(data) { d in
                        LineMark(x: .value("Months", d.month), y: .value("Clicks", d.clicks))
                            .foregroundStyle(.blue) // Set the line color
                        AreaMark(x: .value("Months", d.month), y: .value("Clicks", d.clicks))
                            .foregroundStyle(.blue.opacity(0.2)) // Set the area fill color
                    }
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
                .padding()
            }.frame(width: 328, height: 200)
            
        }
        

    }
}

#Preview {
    graphMain()
}
