//
//  NetworkViewModel.swift
//  F.I.R.E.
//
//  Created by Денис Сторожев on 30.06.2023.
//

import SwiftUI
import Foundation


final class NetworkManager : ObservableObject {
    
    @Published var newsData : [news] = []
    @Published var storiesData : [stories] = []
    
    
    func fetchAndDecodeJSON_NEWS(from url: URL) {
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
                let newsData = try decoder.decode([news].self, from: data)
                DispatchQueue.main.sync {
                    self?.newsData = newsData
                }
            } catch {
                print("Error decoding JSON: \(error)")
            }
        }
        
       
        task.resume()
    }
    func fetchAndDecodeJSON_Stories(from url: URL) {
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
                let storiesData = try decoder.decode([stories].self, from: data)
                DispatchQueue.main.sync {
                    self?.storiesData = storiesData
                }
            } catch {
                print("Error decoding JSON: \(error)")
            }
        }
        
       
        task.resume()
    }
    
    
}
 
