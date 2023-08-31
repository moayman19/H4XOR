//
//  DetailView.swift
//  H4XOR News
//
//  Created by MohammedAyman on 5/20/22.
//  Copyright © 2022 MohammedAyman. All rights reserved.
//

import SwiftUI


struct DetailView: View {
    let url:String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}



