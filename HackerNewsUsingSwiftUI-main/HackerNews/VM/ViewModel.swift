//
//  ApiManager.swift
//  HackerNews
//
//  Created by BKS-GGS on 11/01/23.
//

import Foundation

class ViewModel : ObservableObject{
    
    
    @Published var hitsArray : [Hits] = []
    
    /// GET API RESPONSIBLE FOR FETCHING DATA FROM SERVER
    func getNewsFrom(closure: @escaping () -> ()){
        
        ApiManager().getNewsFrom(url: SERVER.baseUrl.rawValue) { receivedData in
            self.parseData(data: receivedData)
            closure()
        }
        
    }
    
    func parseData(data: Data){
        
        ///CONVERTING DATA TO MODEL
        
        do{
            let hackerNewsList = try JSONDecoder().decode(NewsModel.self, from: data)
            hitsArray = hackerNewsList.hits ?? []
        } catch{
            print(error)
        }
    }
    
    func getTotalHits() -> Int{
        return hitsArray.count
    }
    
    func getTitleFor(row:Int) -> String{
        return hitsArray[row].title ?? ""
    }
    
    func getPointsFor(row:Int) -> Int{
        return hitsArray[row].points ?? 0
    }
}
