import SwiftUI

struct Search: View {
    @State private var isTopLinksSelected = false // State variable to track selection

    var body: some View {
            VStack {
                HStack(spacing: 20) {
                    Button(action: {
                        // Action for "Top links" button
                        self.isTopLinksSelected = true // Set the state variable to true
                    }) {
                        Text("Top links")
                            .padding()
                            .foregroundColor(isTopLinksSelected ? .white : .gray) // Change text color based on selection
                            .background(isTopLinksSelected ? Color.blue : Color.clear) // Change background color based on selection
                            .cornerRadius(25)
                            .frame(width: 101, height: 36)
                    }
                    
                    Button(action: {
                        // Action for "Recent Link" button
                        self.isTopLinksSelected = false // Set the state variable to false
                    }) {
                        Text("Recent Links")
                            .padding()
                            .foregroundColor(isTopLinksSelected ? .gray : .white) // Change text color based on selection
                            .background(isTopLinksSelected ? Color.clear : Color.blue) // Change background color based on selection
                            .cornerRadius(25)
                            .frame(width: 130, height: 36)
                    }
                    
                    ZStack {
                        Image(systemName: "magnifyingglass")
                            .font(.system(size: 18))
                            .font(.title)
                            .foregroundColor(.gray)
                        
                        RoundedRectangle(cornerRadius: 8) // Border radius of 8
                            .stroke(Color.gray, lineWidth: 1) // Border color and width
                            .frame(width: 36, height: 36) // Rectangle dimensions
                    }
                }
                
                if isTopLinksSelected {
                    // ScrollView for "Top links"
                    ScrollView {
                        // Content for "Top links"
                        VStack(spacing: 20) {
                            ForEach(0..<10) { _ in
                                linksCard(link: link2)
                            }
                        }

                    }
                    .padding()
                } else {
                    // ScrollView for "Recent Links"
                    ScrollView {
                        // Content for "Recent Links"
                        
                        VStack(spacing: 20) {
                            ForEach(0..<10) { _ in
                                linksCard(link: link1)
                            }
                        }

                       
                    }
                    .padding()
                }
            }
        }
    }


struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}
