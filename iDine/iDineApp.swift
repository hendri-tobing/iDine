//
//  iDineApp.swift
//  iDine
//
//  Created by Triana Ambarsari on 23/03/24.
//

import SwiftUI

@main
struct iDineApp: App {
    @StateObject var order = Order()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
