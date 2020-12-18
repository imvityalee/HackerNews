//
//  PostData.swift
//  HackerNews
//
//  Created by Victor Lee on 12/17/20.
//

import Foundation


struct Results: Decodable {
    
    let hits: [Post]
}


struct Post: Decodable, Identifiable {

    var id: String {
        
        return objectID
    }

    let objectID: String
    let title: String
    let points: Int
    let url: String?
    
}
