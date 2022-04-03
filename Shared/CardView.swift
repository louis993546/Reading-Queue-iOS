//
//  CardView.swift
//  Reading Queue
//
//  Created by Louis Tsai on 02.04.22.
//

import SwiftUI

struct CardView: View {
    let url: URL
    
    var body: some View {
        ZStack {
            AsyncImage(url: url) { image in
                image.resizable()
                    .clipShape(
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                    )
            } placeholder: {
                RoundedRectangle(cornerRadius: 25, style: .continuous).fill(.white)
            }
            
            Text("testing")
        }
        .aspectRatio(3/2, contentMode: .fit)
    }
}

struct Content {
    var id: String
    var title: String
    var description: String
    var imageUrl: URL
}

//struct CardView_Previews: PreviewProvider {
//    static var previews: some View {
//        CardView()
//    }
//}
