//
//  RootView.swift
//  Budgetzoid
//
//  Created by Sanchitha Dinesh on 2/22/20.
//  Copyright © 2020 Sanchitha. All rights reserved.
//

import SunburstDiagram
import SwiftUI

struct RootView: View {

    @ObservedObject var configuration: SunburstConfiguration
    
    var body: some View {
        AnyView(GeometryReader { geometry -> AnyView in
            if geometry.size.width <= geometry.size.height {
                return AnyView(
                    VStack(spacing: 0) {
                        SunburstView(configuration: self.configuration)
                        Divider()
                            .edgesIgnoringSafeArea(.all)
                        SettingsView(configuration: self.configuration)
                    }
                )
            } else {
                return AnyView(
                    HStack(spacing: 0) {
                        SunburstView(configuration: self.configuration)
                            .edgesIgnoringSafeArea(.all)
                        Divider()
                            .edgesIgnoringSafeArea(.all)
                        SettingsView(configuration: self.configuration)
                    }
                )
            }
        })
    }
}

#if DEBUG
struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        let configuration = SunburstConfiguration(nodes: [
            Node(name: "Entertainment",
                 showName: false,
                 image: UIImage(named: "Entertainment"),
                 value: 10.0,
                 backgroundColor: .systemBlue),
            Node(name: "Restaurant",
                 showName: false,
                 image: UIImage(named: "eating"),
                 value: 30.0,
                 backgroundColor: .systemRed),
            Node(name: "Home",
                 showName: false,
                 image: UIImage(named: "house"),
                 value: 75.0,
                 backgroundColor: .systemTeal)
        ])
        return RootView(configuration: configuration)
    }
}
#endif
