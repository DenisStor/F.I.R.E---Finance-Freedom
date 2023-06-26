//
//  NetworkManager.swift
//  F.I.R.E
//
//  Created by Денис Сторожев on 26.06.2023.
//

import Foundation

struct NewsStruct: Codable , Hashable {
    let titleRU : String
    let textRU : String
    let titleEN : String
    let textEN : String
    
 
}


final class API: ObservableObject {
    @Published var newsVar: [NewsStruct] = []
    func JsonDecode(from url: URL) {
        let task = URLSession.shared.dataTask(with: url) { [weak self] (data, response, error) in
            if let error = error {
                print("ошибка номер \(error)")
                return
            }
            
            guard let data = data else {
                print("нет")
                return
            }
            
            let decoder = JSONDecoder()
            
            do {
                let posts = try decoder.decode([NewsStruct].self, from: data)
                DispatchQueue.main.async {
                    self?.newsVar = posts
                }
            } catch {
                print("поломалось , ошибка \(error)")
            }
        }
        
        task.resume()
    }
}
