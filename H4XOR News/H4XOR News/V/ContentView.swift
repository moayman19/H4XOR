//
//  ContentView.swift
//  H4XOR News
//
//  Created by MohammedAyman on 5/20/22.
//  Copyright © 2022 MohammedAyman. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView{
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                        
                    }
                }
                
            }
                
                
            .navigationBarTitle("H4XOR NEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



/*let posts = [post(id: "1", title: "Hello"),
 post(id: "2", title: "Bonjour"),
 post(id: "3", title: "Hola")
 ]*/
