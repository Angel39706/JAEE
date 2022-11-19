//
//  NetworkManager.swift
//  JAEE
//  Adopted by Sean Allen Course (Appetizer Lesson)
//  Created by Angel Martinez on 10/26/22.
//

import UIKit

final class NetworkManager {
    
    static let shared = NetworkManager()
    private let cache = NSCache<NSString, UIImage>()
       
    static let baseURL = "https://raw.githubusercontent.com/Angel39706/JAEE/main/"
    private let JAEEURL =  baseURL + "JAEE.json"
    
    private init() {}
    
    func getJAEE() async throws -> [JAEEjs] {
        
        guard let url = URL(string: JAEEURL) else {
            throw JERROR.invalidURL
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(JAEEResponse.self, from: data).request
        } catch {
            throw JERROR.invalidData
        }
    }
    
    func downloadImage(fromURLString urlString: String, completed: @escaping (UIImage?) -> Void) {
        
        let cacheKey = NSString(string: urlString)
        
        if let image = cache.object(forKey: cacheKey){
            completed(image)
            return
        }
        
        guard let url = URL(string :urlString)else {
            completed(nil)
            return
        }
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            
            guard let data, let image = UIImage(data: data) else {
                completed(nil)
                return
            }
            
            self.cache.setObject(image, forKey: cacheKey)
            completed(image)
        }
        task.resume()
    }
}
