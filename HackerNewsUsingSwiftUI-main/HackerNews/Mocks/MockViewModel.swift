//
//  ApiManager.swift
//  HackerNews
//
//  Created by BKS-GGS on 11/01/23.
//

import Foundation

class MockViewModel {
    
    
    var hitsArray : [Hits] = []
    
    /// GET API RESPONSIBLE FOR FETCHING DATA FROM SERVER
    func getNewsFrom(closure: @escaping () -> ()){
        
        MockApiManager().getNewsFrom(url: SERVER.baseUrl.rawValue) { receivedData in
            self.parseData(data: receivedData)
            closure()
        }
        
    }
    
    func parseData(data: Data){
        
        let h1 = Hits(title: "abc", points: 8)
        let h2 = Hits(title: "def", points: 9)
        let h3 = Hits(title: "ghi", points: 10)
        hitsArray.append(h1)
        hitsArray.append(h2)
        hitsArray.append(h3)

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
