//
//  ApiManager.swift
//  HackerNews
//
//  Created by BKS-GGS on 11/01/23.
//

import Foundation

class MockApiManager : ApiManagerProtocol{
    
    /// GET API RESPONSIBLE FOR FETCHING DATA FROM SERVER
    
    func getNewsFrom(url: String, closure: @escaping (Data) -> ()){
        closure(Data())
    }

}
