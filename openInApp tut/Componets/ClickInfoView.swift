import SwiftUI

struct ClickInfoView: View {
    let title: String
    let subTitle: String
    let imageName: String
    let backgroundColor: Color
    let titleColor: Color
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            ZStack {
                Image(systemName: imageName)
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(titleColor)
                    .padding(.leading, 8)
                
                Circle()
                    .foregroundColor(titleColor.opacity(0.15))
                    .frame(width: 40, height: 40)
            }
            
            Text(title)
                .frame(height: 25)
                .fontWeight(.bold)
                .font(.system(size: 15))
                .foregroundColor(.black)
                .padding(.leading, 8)
            
            Text(subTitle)
                .foregroundColor(.gray)
                .frame(height: 20)
                .font(.system(size: 15))
                .foregroundColor(titleColor)
                .padding(.leading, 8)
            
        }
        .frame(width: 120, height: 120)
        .background(backgroundColor)
        .cornerRadius(10)
        .shadow(radius: 4)
    }
}

struct ClickInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ClickInfoView(title: "123", subTitle: "Today's clicks", imageName: "dot.circle.and.cursorarrow", backgroundColor: .white, titleColor: Color(red: 92/255, green: 51/255, blue: 207/255))
    }
}
