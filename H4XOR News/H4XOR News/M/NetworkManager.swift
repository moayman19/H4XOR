//
//  NetworkManager.swift
//  H4XOR News
//
//  Created by MohammedAyman on 5/20/22.
//  Copyright © 2022 MohammedAyman. All rights reserved.
//

import Foundation
class NetworkManager:ObservableObject {
   @Published var posts = [post]()
    func fetchData() {
        if let url = URL(string:  "https://hn.algolia.com/api/v1/search?tags=front_page"){
            let session = URLSession(configuration: .default)
            
            let task = session.dataTask(with: url) { (data, respone, error) in
                if error == nil {
                   let decoder = JSONDecoder()
                    if let safeData = data{
                        do{
                            let results = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
                            
                        }catch{
                            print(error)
                        }
                    
                }
                }
            }
            task.resume()
            
        }
    }
}
