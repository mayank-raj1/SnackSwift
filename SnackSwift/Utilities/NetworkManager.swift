//
//  NetworkManager.swift
//  SnackSwift
//
//  Created by Mayank Raj on 2024-01-14.
//

import Foundation
import SwiftUI

final class NetworkManager{
    static let shared = NetworkManager()
    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    private let appetizerURL = baseURL + "appetizers"
    private let cache = NSCache<NSString, UIImage>()
    
    private init() {}
    
    func getAppetizers(completed: @escaping (Result<[Appetizer], APerror>) -> Void){
        guard let url = URL(string: appetizerURL) else {
            completed(.failure(.invalidURL))
            return
        }
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(APerror.invalidResponse))
                return
            }
            
            guard let data = data else{
                completed(.failure(.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let decodedResponse = try decoder.decode(AppetizerResponse.self, from: data)
                completed(.success(decodedResponse.request))
            } catch {
                completed(.failure(APerror.invalidData))
            }
        }
        
        task.resume()
    }
    
    func downloadImg(url: String, completed: @escaping (UIImage?) -> Void) {
        let cachedKey = NSString(string: url)
        if let cacheImg = cache.object(forKey: NSString(string: url)){
            completed(cacheImg)
            return
        }
        
        guard let url = URL(string: url) else{
            completed(nil)
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error  in
            guard let data = data, let img = UIImage(data: data) else{
                completed(nil)
                return
            }
            self.cache.setObject(img, forKey: cachedKey)
            completed(img)
            return
        }
        task.resume()
    }
}
