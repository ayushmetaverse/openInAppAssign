import SwiftUI

struct NavBar: View {
    var body: some View {
        HStack {
            
            // Title and Subtitle
            VStack(alignment: .leading, spacing: 2) {
                Text("Dashboard")
                    .font(.system(size: 24, weight: .semibold))
                    .foregroundColor(.white)
            }
            .padding(.trailing, 20)
            
            Spacer()
            
            VStack(spacing: 5) {
                Image("wrench") // Using SF Symbols for the wrench icon
                    .font(.system(size: 18))
            }
            .padding(10) // Padding around the icon
            
            .background(
                Color.white.opacity(0.2)
                    .cornerRadius(10)
//                    
            )
            
        }
        .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15))
        .background(Color(red: 14/255, green: 111/255, blue: 255/255))
    }
}

struct NavBar_Previews: PreviewProvider {
    static var previews: some View {
        NavBar()
    }
}
