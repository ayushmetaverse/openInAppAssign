//import SwiftUI
//
//struct linksCard: View {
//    
//    let link: links
//    
//    var body: some View {
//        VStack {
//            HStack(spacing: 45) {
//                
//                Image("whatsapp")
//                    .frame(width: 48, height: 48)
//                
//                VStack(spacing: 4) {
//                    Text("Sample link name")
//                        .font(.system(size: 12))
//                        .fontWeight(.semibold)
//                    Text("22 Aug 2022")
//                        .foregroundColor(.gray)
//                        .font(.system(size: 12))
//                }
//                
//                VStack(spacing: 4) {
//                    Text("2323")
//                        .font(.system(size: 12))
//                        .fontWeight(.semibold)
//                    Text("Clicks")
//                        .foregroundColor(.gray)
//                        .font(.system(size: 12))
//                }
//                .padding()
//            }
//            
//            VStack {
//                HStack {
//                    Text("https://samplelink.oia.bio/ashdcc")
//                        .frame(width: 240)
//                    Spacer()
//                    Image(systemName: "doc.on.doc")
//                        .foregroundColor(.blue)
//                }
//                .padding()
//            }
//            .frame(width: 328, height: 40)
//            .overlay(
//                RoundedRectangle(cornerRadius: 10)
//                    .stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))
//            )
//            .background(Color.blue.opacity(0.1))
//            .cornerRadius(10)
//            .shadow(radius: 10)
//        }
//        .frame(width: 328, height: 116)
//        .background(Color.white)
//        .cornerRadius(10)
//        .shadow(radius: 5)
//    }
//}
//
//struct linksCard_Previews: PreviewProvider {
//    static var previews: some View {
//        linksCard(link: link1)
//            .previewLayout(.sizeThatFits)
//    }
//}





import SwiftUI

struct linksCard: View {
    
    let link: links
    
    var body: some View {
        VStack {
            HStack(spacing: 45) {
                
                Image(link.image) // Use link's image property
                    .frame(width: 48, height: 48)
                
                VStack(spacing: 4) {
                    Text(link.linkName) // Use link's linkName property
                        .font(.system(size: 12))
                        .fontWeight(.semibold)
                    Text(link.Date) // Use link's Date property
                        .foregroundColor(.gray)
                        .font(.system(size: 12))
                }
                
                VStack(spacing: 4) {
                    Text("\(link.clicks)") // Use link's clicks property
                        .font(.system(size: 12))
                        .fontWeight(.semibold)
                    Text("Clicks")
                        .foregroundColor(.gray)
                        .font(.system(size: 12))
                }
                .padding()
            }
            
            VStack {
                HStack {
                    Text(link.link) // Use link's link property
                        .frame(width: 240)
                    Spacer()
                    Image(systemName: "doc.on.doc")
                        .foregroundColor(.blue)
                }
                .padding()
            }
            .frame(width: 328, height: 40)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))
            )
            .background(Color.blue.opacity(0.1))
            .cornerRadius(10)
            .shadow(radius: 10)
        }
        .frame(width: 328, height: 116)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

struct linksCard_Previews: PreviewProvider {
    static var previews: some View {
        linksCard(link: link1)
            .previewLayout(.sizeThatFits)
    }
}

struct links {
    var image: String
    var linkName: String
    var clicks: Int
    var link: String
    var Date: String
}

let link1 = links(image: "whatsapp", linkName: "Sample link name", clicks: 2323, link: "https://samplelink.oia.bio/ashdcc", Date: "22 Aug 2022")


let link2 = links(image: "Arrowszig", linkName: "Instagram", clicks: 5449, link: "https://www.instagram.com", Date: "23 march 2004")


