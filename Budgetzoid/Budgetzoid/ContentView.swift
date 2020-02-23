//
//  ContentView.swift
//  Budgetzoid
//
//  Created by Sanchitha Dinesh on 2/22/20.
//  Copyright © 2020 Sanchitha. All rights reserved.
//

import SwiftUI
import SunburstDiagram

struct ContentView: View {
    let configuration = SunburstConfiguration(nodes: [
         Node(name: "Walking", value: 10.0, backgroundColor: .systemBlue),
         Node(name: "Restaurant", value: 30.0, backgroundColor: .systemRed, children: [
             Node(name: "Dessert", image: UIImage(named: "croissant"), value: 6.0),
             Node(name: "Dinner", image: UIImage(named: "poultry"), value: 10.0),
         ]),
         Node(name: "Transport", value: 10.0, backgroundColor: .systemPurple),
         Node(name: "Home", value: 50.0, backgroundColor: .systemTeal),
     ])

     // Get the view controller for the SunburstView
     let viewController = UIHostingController(rootView: SunburstView(configuration: configuration))
    var body: some View {
        VStack {
            configuration()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
