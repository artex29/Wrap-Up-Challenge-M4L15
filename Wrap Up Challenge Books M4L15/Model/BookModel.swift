//
//  BookModel.swift
//  Wrap Up Challenge Books M4L15
//
//  Created by ANGEL RAMIREZ on 12/31/21.
//

import Foundation

struct BookModel:Decodable, Identifiable {
    
    var id: Int
    var title: String
    var author: String
    var isFavourite: Bool
    var currentPage: Int
    var rating: Int
    var content:[String]
    
    
    
}
