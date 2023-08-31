//
//  PostData.swift
//  H4XOR News
//
//  Created by MohammedAyman on 5/20/22.
//  Copyright © 2022 MohammedAyman. All rights reserved.
//

import Foundation
struct Results:Decodable {
    let hits:[post]
}

struct post:Decodable,Identifiable {
    var id:String{
        return objectID
    }
    
    let objectID:String
    let points:Int
    let title:String
    let url:String?
}
