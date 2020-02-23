//
//  IfLetView.swift
//  Budgetzoid
//
//  Created by Sanchitha Dinesh on 2/22/20.
//  Copyright © 2020 Sanchitha. All rights reserved.
//
import SwiftUI

struct IfLet<T, Out: View>: View {
    
    let value: T?
    let produce: (T) -> Out
    
    init(_ value: T?, produce: @escaping (T) -> Out) {
        self.value = value
        self.produce = produce
    }
    
    var body: some View {
        Group {
            if value != nil {
                produce(value!)
            }
        }
    }
}
