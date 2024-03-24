//
//  ContentView.swift
//  iDine
//
//  Created by Hendri T on 23/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
            List {
                ForEach(menu){ section in
                    Section(section.name){
                        ForEach(section.items) { item in
                            NavigationLink(value: item) {
                                ItemRow(item: item)
                            }
                        }
                    }
                }
            }
            .navigationDestination(for: MenuItem.self) { item in
                ItemDetail(item: item)
            }
            .navigationTitle("Menu")
            .listStyle(.grouped)
        }
    }
}

#Preview {
    ContentView()
}
