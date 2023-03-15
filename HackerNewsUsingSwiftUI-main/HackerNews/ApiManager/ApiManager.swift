//
//  ApiManager.swift
//  HackerNews
//
//  Created by BKS-GGS on 11/01/23.
//

import Foundation

protocol ApiManagerProtocol {
    
    func getNewsFrom(url: String, closure: @escaping (Data) -> ())
    
}
class ApiManager : ApiManagerProtocol{
    
    /// GET API RESPONSIBLE FOR FETCHING DATA FROM SERVER
    
    func getNewsFrom(url: String, closure: @escaping (Data) -> ()){
        
        guard let serverUrl = URL (string: url) else{
            print("Server URL is wrong. Kindly check and retry.")
            return
        }
        
        URLSession.shared.dataTask(with: URLRequest(url: serverUrl)) { data, response, error in
            
            guard let data = data else{
                print("Unable to fetch data from Server...")
                return
            }
            
            closure(data)
            
        }.resume()
        
    }
}
