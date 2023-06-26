//
//  NetworkManager.swift
//  F.I.R.E
//
//  Created by Денис Сторожев on 26.06.2023.
//

import Foundation

struct News: Codable , Hashable {
    let title: String
    let text: String
}

final class PostData: ObservableObject {
    @Published var posts: [News] = []
    
    func fetchAndDecodeJSON(from url: URL) {
        let task = URLSession.shared.dataTask(with: url) { [weak self] (data, response, error) in
            
            if let error = error {
                print("Error: \(error)")
                return
            }
            
            guard let data = data else {
                print("No data received")
                return
            }
            
            let decoder = JSONDecoder()
            
            do {
                let posts = try decoder.decode([News].self, from: data)
                DispatchQueue.main.async {
                    self?.posts = posts
                }
            } catch {
                print("Error decoding JSON: \(error)")
            }
        }
        
        task.resume()
    }
}
