//
//  ItemDetail.swift
//  iDine
//
//  Created by Triana Ambarsari on 23/03/24.
//

import SwiftUI

struct ItemDetail: View {
    let item: MenuItem
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit()
                Text("Photo: \(item.photoCredit)")
                    .padding(4)
                    .background(.black)
                    .font(.caption)
                    .foregroundColor(.white)
                    .offset(x: -5, y: -5)
            }
            Text(item.description)
                .padding()
            
            Button("Order this") {
                order.add(item: item)
            }
            .buttonStyle(.borderedProminent)
            Spacer()
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }

}

#Preview {
    NavigationStack{
        ItemDetail(item: MenuItem.example)
            .environmentObject(Order())
    }
}
