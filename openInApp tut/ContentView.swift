//
//  ContentView.swift
//  openInApp tut
//
//  Created by apple on 16/04/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        
        NavBar()
        
        ZStack {
            TabView(selection: $selectedTab){
                Main()
                    .tabItem {
                        VStack{
                            Image(systemName: "link" )
                                .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
                            Text("Link")
                        }
                    }
                
                Text("Connections")
                    .tabItem {
                        VStack{
                            Image(systemName: selectedTab == 1 ? "book.fill" : "book")
                                .environment(\.symbolVariants, selectedTab == 1 ? .fill : .none)
                            Text("Courses")
                        }
                    }
                    .tag(1)
                
                Text("plus")
                    .tabItem {
                        ZStack {
                            Circle()
                                .foregroundColor(.blue)
                                .frame(width: 60, height: 60)
                            
                            Image(systemName: "plus")
                                .foregroundColor(.white)
                        }
                    }
                    .tag(2)
                
                Text("Contacts")
                    .tabItem {
                        VStack{
                            Image(systemName: selectedTab == 3 ? "speaker.wave.3.fill" : "speaker.wave.3")
                                .environment(\.symbolVariants, selectedTab == 3 ? .fill : .none)
                            Text("Campaigns")
                        }
                    }
                    .tag(3)
                
                Text("Groups")
                    .tabItem {
                        VStack{
                            Image(systemName: selectedTab == 4 ? "number.square.fill" : "person")
                                .environment(\.symbolVariants, selectedTab == 4 ? .fill : .none)
                            Text("Profile")
                        }
                    }
                    .tag(4)
            }
            .tint(.black)
            
            VStack {
                Spacer()
                Button(action: {
                    // Action to perform when the button is tapped
                }) {
                    ZStack {
                        Circle()
                            .foregroundColor(.blue)
                            .frame(width: 60, height: 60)
                        
                        Image(systemName: "plus")
                            .foregroundColor(.white)
                    }
                }
                .padding(.bottom, 20)
            }
        }
    }
}

#Preview {
    ContentView()
}
