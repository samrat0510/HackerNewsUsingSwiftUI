//
//  HackerNewsSwiftUIView.swift
//  HackerNews
//
//  Created by BKS-GGS on 12/01/23.
//

import SwiftUI

struct HackerNewsSwiftUIView: View {
    @StateObject private var viewModel = ViewModel()
    
    var body: some View {
        VStack{
            List{
                ForEach(viewModel.hitsArray,id: \.self){
                    newsData in
                    HStack{
                        Text(newsData.points!.codingKey.stringValue)
                        Text(newsData.title!)
                    }
                }
            }
            .onAppear(){
             
                self.viewModel.getNewsFrom(){
                    
                }
            }
        }
    }
}

struct HackerNewsSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        HackerNewsSwiftUIView()
    }
}
