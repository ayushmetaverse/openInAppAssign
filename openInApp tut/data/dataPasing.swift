////import Foundation
////import SwiftUI
////
////struct CardData: Hashable, Codable {
////    let title: String
////    let times_ago: String
////    let total_clicks: Int
////    let original_image: String
////    let web_link: String
////}
////
////
////
////
////class ViewModel: Observable{
////    @Published var cardData: [cardData] = []
////    
////    func fetch(){
////        guard let url = URL (string: "https://api.inopenapp.com/api/v1/dashboardNew") else {
////            return
////        }
////        
////        let task = URLSession.shared.dataTask(with: url) { data, _, error in
////            guard let data = data, error == nil else {
////                return
////            }
////        }
////        
////        // convert to JSON
////        do{
////            let card = try JSONDecoder().decode([cardData].self, from: data)
////            DispatchQueue.main.async{
////                self?.card = card
////            }
////        }
////        catch{
////            print("error")
////        }
////    }
////    task.resume()
////}
//
//
//import Foundation
//import SwiftUI
//
//struct CardData: Hashable, Codable {
//    let title: String
//    let times_ago: String
//    let total_clicks: Int
//    let original_image: String
//    let web_link: String
//}
//
//class ViewModel: ObservableObject {
//    @Published var cardData: [CardData] = []
//    
////    func fetch() {
////        guard let url = URL(string: "https://api.inopenapp.com/api/v1/dashboardNew") else {
////            return
////        }
////        
////        var request = URLRequest(url: url)
////        request.httpMethod = "GET"
////        request.setValue("Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjU5MjcsImlhdCI6MTY3NDU1MDQ1MH0.dCkW0ox8tbjJA2GgUx2UEwNlbTZ7Rr38PVFJevYcXFI", forHTTPHeaderField: "Authorization")
////        
////        let task = URLSession.shared.dataTask(with: request) { data, response, error in
////            guard let data = data, error == nil else {
////                print("Error: \(error?.localizedDescription ?? "Unknown error")")
////                return
////            }
////            
////            if let httpResponse = response as? HTTPURLResponse, !(200...299).contains(httpResponse.statusCode) {
////                print("HTTP Response Status code: \(httpResponse.statusCode)")
////                return
////            }
////            
////            do {
////                let decodedData = try JSONDecoder().decode([CardData].self, from: data)
////                DispatchQueue.main.async {
////                    self.cardData = decodedData
////                }
////            } catch {
////                print("Error decoding JSON: \(error.localizedDescription)")
////            }
////        }
////        
////        task.resume()
////    }
//    
//    func fetchData() {
//        // Define the URL
//        guard let url = URL(string: "https://api.inopenapp.com/api/v1/dashboardNew") else {
//            print("Invalid URL")
//            return
//        }
//        
//        // Create the request
//        var request = URLRequest(url: url)
//        request.httpMethod = "GET"
//        
//        // Add headers
//        request.setValue("Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjU5MjcsImlhdCI6MTY3NDU1MDQ1MH0.dCkW0ox8tbjJA2GgUx2UEwNlbTZ7Rr38PVFJevYcXFI", forHTTPHeaderField: "Authorization")
//        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
//        
//        // Make the request
//        URLSession.shared.dataTask(with: request) { data, response, error in
//            // Handle the response
//            if let error = error {
//                print("Error: \(error.localizedDescription)")
//                return
//            }
//            
//            guard let httpResponse = response as? HTTPURLResponse else {
//                print("Invalid response")
//                return
//            }
//            
//            if httpResponse.statusCode == 200 {
//                if let data = data {
//                    if let responseString = String(data: data, encoding: .utf8) {
//                        DispatchQueue.main.async {
//                            self.data = responseString
//                        }
//                    }
//                }
//            } else {
//                print("HTTP Error: \(httpResponse.statusCode)")
//            }
//        }.resume()
//    }
//    
//    
//}
//
//
//
//


import SwiftUI

struct CardData: Hashable, Codable {
    let title: String
    let times_ago: String
    let total_clicks: Int
    let original_image: String
    let web_link: String
}

class ViewModel: ObservableObject {
    @Published var cardData: [CardData] = []
    
    func fetchData() {
        // Define the URL
        guard let url = URL(string: "https://api.inopenapp.com/api/v1/dashboardNew") else {
            print("Invalid URL")
            return
        }
        
        // Create the request
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        // Add headers
        request.setValue("Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjU5MjcsImlhdCI6MTY3NDU1MDQ1MH0.dCkW0ox8tbjJA2GgUx2UEwNlbTZ7Rr38PVFJevYcXFI", forHTTPHeaderField: "Authorization")
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        // Make the request
        URLSession.shared.dataTask(with: request) { data, response, error in
            // Handle the response
            if let error = error {
                print("Error: \(error.localizedDescription)")
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse else {
                print("Invalid response")
                return
            }
            
            if httpResponse.statusCode == 200 {
                if let data = data {
                    do {
                        let decoder = JSONDecoder()
                        self.cardData = try decoder.decode([CardData].self, from: data)
                    } catch {
                        print("Error decoding JSON: \(error)")
                    }
                }
            } else {
                print("HTTP Error: \(httpResponse.statusCode)")
            }
        }.resume()
    }
}
