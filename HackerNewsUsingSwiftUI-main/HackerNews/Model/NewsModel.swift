//
//  NewsModel.swift
//  HackerNews
//
//  Created by BKS-GGS on 10/01/23.
//


struct NewsModel : Decodable, Hashable{
    
    var hits: [Hits]?
    
}
struct Hits: Decodable, Hashable{
    
    var title: String?
    var points: Int?
}
