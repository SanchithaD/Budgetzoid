//
//  SettingsView.swift
//  Budgetzoid
//
//  Created by Sanchitha Dinesh on 2/22/20.
//  Copyright © 2020 Sanchitha. All rights reserved.
//

import SunburstDiagram
import SwiftUI

struct SettingsView: View {

    @ObservedObject var configuration: SunburstConfiguration
    
    @State private var parentTotalValue: Double? = nil
    @State private var arcAngleShownIfLessThan: Double = 0.0
    
    var body: some View {
        NavigationView {
            Form {
                Section(header:Text("Content").font(.subheadline)) {
                    NavigationLink(destination: SettingsnodesView(nodes: configuration.nodes)) {
                        Text("Areas")
                        Spacer()
                        Text(configuration.nodes.count == 0 ? "[No areas]" : "[\(configuration.nodes.count) areas]").foregroundColor(Color.secondary)
                    }
//                    if case .parentDependent(let totalValue) = configuration.calculationMode {
//                        Stepper(value: $parentTotalValue, in: 0 ... 250) { Text(".parentDependent(totalValue:)") }
//                    } else if case .parentInependent(let totalValue) = configuration.calculationMode {
//                        Stepper(value: $parentTotalValue, in: 0 ... 250) { Text(".parentIndependent(totalValue:)") }
//                    }
                }
                Section(header:Text("Interactions").font(.subheadline)) {
                    HStack {
                        Text("Selected Section")
                        Spacer()
                        Text(configuration.selectedNode == nil ? "none" : configuration.selectedNode!.name).foregroundColor(Color.secondary)
                    }
                    HStack {
                        Text("Selected Place")
                        Spacer()
                        Text(configuration.focusedNode == nil ? "none" : configuration.focusedNode!.name).foregroundColor(Color.secondary)
                    }
                }
                Section(header:Text("Transactions").font(.subheadline)) {
                    HStack {
                        Text("View")
                        Spacer()
                        NavigationLink(destination: Transactions()) {
                        Text("Transactions")
                        }
                    }
                }

                Section(header:Text("Account").font(.subheadline)) {
                    HStack {
                        Text("Sally Seashell")
                        Spacer()
                        NavigationLink(destination: LoginPage()) {
                        Text("Logout")
                        }
                    }
                }
              
            }.navigationBarTitle(Text("Budgetzoid"))
        }
    }
}

extension SunburstConfiguration {

    static let defaultMaximumExpandedRingsShownCount: UInt = 2
    static let defaultMaximumRingsShownCount: UInt = 4

    // MARK: maximumExpandedRingsShownCount bindings

    var maximumExpandedRingsShownCountSliderBinding: Binding<Double> {
        return Binding(get: { () -> Double in
            return Double(self.maximumExpandedRingsShownCount ?? SunburstConfiguration.defaultMaximumExpandedRingsShownCount)
        }, set: { (value) in
            self.maximumExpandedRingsShownCount = UInt(value)
        })
    }

    var maximumExpandedRingsShownCountToggleBinding: Binding<Bool> {
        return Binding(get: { () -> Bool in
            return self.maximumExpandedRingsShownCount != nil
        }, set: { (value) in
            self.maximumExpandedRingsShownCount = value ? SunburstConfiguration.defaultMaximumExpandedRingsShownCount : nil
        })
    }

    // MARK: maximumRingsShownCount bindings

    var maximumRingsShownCountSliderBinding: Binding<Double> {
        return Binding(get: { () -> Double in
            return Double(self.maximumRingsShownCount ?? SunburstConfiguration.defaultMaximumRingsShownCount)
        }, set: { (value) in
            self.maximumRingsShownCount = UInt(value)
        })
    }

    var maximumRingsShownCountToggleBinding: Binding<Bool> {
        return Binding(get: { () -> Bool in
            return self.maximumRingsShownCount != nil
        }, set: { (value) in
            self.maximumRingsShownCount = value ? SunburstConfiguration.defaultMaximumRingsShownCount : nil
        })
    }
}

#if DEBUG
struct SettingsView_Previews: PreviewProvider {
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
        return SettingsView(configuration: configuration)
    }
}
#endif
