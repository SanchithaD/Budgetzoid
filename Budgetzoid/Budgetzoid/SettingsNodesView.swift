//
//  SettingsnodesView.swift
//  Budgetzoid
//
//  Created by Sanchitha Dinesh on 2/22/20.
//  Copyright © 2020 Sanchitha. All rights reserved.
//

import SunburstDiagram
import SwiftUI

struct SettingsnodesView: View {
    
    var nodes: [Node]

    var body: some View {
        Form {
            if nodes.count > 0 {
                Section {
                    ForEach(nodes) { node in
                        self.nodeCellFor(node)
                    }
                }
            }
            Section {
                NavigationLink(destination: SettingsNewNodeView()) {
                    Text("Add new area")
                }
            }
        }
    }
    
    fileprivate func nodeCellFor(_ node: Node) -> some View {
        return NavigationLink(destination: SettingsnodesView(nodes: node.children)) {
            HStack {
                IfLet(node.image) { image in
                    Image(uiImage: image).renderingMode(.template)
                }
                Text(node.name)
                Spacer()
                Text(node.children.count == 0 ? "Leaf node" : "\(node.children.count) child nodes").foregroundColor(Color.secondary)
            }
        }
    }
}

#if DEBUG
struct SettingsnodesView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsnodesView(nodes: [
            Node(name: "Entertainment",
                 showName: false,
                 image: UIImage(named: "Entertainment"),
                 value: 10.0,
                 backgroundColor: .systemBlue)
        ])
    }
}
#endif
