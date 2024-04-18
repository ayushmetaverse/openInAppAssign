//
//  Main.swift
//  openInApp tut
//
//  Created by apple on 16/04/24.
//

import SwiftUI

struct Main: View {
    var body: some View {
        VStack{
            // NavBar
            
            ScrollView{
                    VStack(spacing: 12){
                            Text("Good Moring")
                                .foregroundColor(.gray)
                                .padding(.trailing, 60)
                            HStack{
                                Text("Ajay Manva ")
                                    .fontWeight(.semibold)
                                Text(String(Array("👋").reversed()))
                            }.font(.system(size: 24))
                        }
                        .padding(.top, 25)
                    .padding(.trailing, 180)
                
                
                // Chart
                graphMain()
                    .padding(.bottom, 25)
                
                HStack {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 22) {
                            ClickInfoView(title: "123", subTitle: "Today's clicks", imageName: "dot.circle.and.cursorarrow", backgroundColor: .white, titleColor: Color(red: 92/255, green: 51/255, blue: 207/255))
                            
                            ClickInfoView(title: "Ahamedabad", subTitle: "Top Location", imageName: "location.circle", backgroundColor: .white, titleColor: .blue)
                            
                            ClickInfoView(title: "Instagram",
                                                  subTitle: "Top Source",
                                                  imageName: "dot.circle.and.cursorarrow",
                                                  backgroundColor: .white,
                                                  titleColor: .red)
                           
                        }
                        .padding()
                    }
                }
                .padding(.bottom, 15)
                
                Button(action:{
                    
                }){
                    RoundedRectangle(cornerRadius: 10) // Adjust corner radius as needed
                        .stroke(Color.gray, lineWidth: 1) // Adjust line width as needed
                        .frame(width: 328, height: 48) // Set the desired width and height
                        .overlay(
                            HStack {
                                Image("Arrowszig")
                                Text("View Analytics")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.black)
                            }
                        )
                }
                
                .padding(.bottom, 30)
                
               Search()
                 
                Button(action:{
                    
                }){
                    RoundedRectangle(cornerRadius: 10) // Adjust corner radius as needed
                        .stroke(Color.gray, lineWidth: 1) // Adjust line width as needed
                        .frame(width: 328, height: 48) // Set the desired width and height
                        .overlay(
                            HStack {
                                Image(systemName: "link")
                                    .foregroundColor(.black)
                                Text("View all Links")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.black)
                            }
                        )
                }
                
                .padding(.bottom, 35)
                
                RoundedRectangle(cornerRadius: 10) // Adjust corner radius as needed
                    .stroke(Color.green, lineWidth: 1) // Adjust line width as needed
                    .frame(width: 328, height: 64) // Set the desired width and height
                    .background(Color.green.opacity(0.04))
                    .overlay(
                        HStack {
                            Image("whatsapp")
                                .foregroundColor(.black)
                                .padding(.trailing, 10)
                            Text("Talk with us")
                                .fontWeight(.semibold)
                                .foregroundColor(.black)
                        }
                            .padding(.trailing, 160)
                    ).padding(.bottom, 15)
                
                
                RoundedRectangle(cornerRadius: 10) // Adjust corner radius as needed
                    .stroke(Color.blue, lineWidth: 1) // Adjust line width as needed
                    .frame(width: 328, height: 64) // Set the desired width and height
                    .background(Color.blue.opacity(0.04))
                    .overlay(
                        HStack {
                            Image("question-mark")
                               
                                .padding(.trailing, 10)
                            Text("Frequently Asked Questions")
                                .fontWeight(.semibold)
                                .foregroundColor(.black)
                        }
                            .padding(.trailing, 30)
                    ).padding(.bottom, 150)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(red: 245/255, green: 245/255, blue: 245/255)) // #F5F5F5
                .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    Main()
}
