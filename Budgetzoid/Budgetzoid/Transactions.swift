//
//  Transactions.swift
//  Budgetzoid
//
//  Created by Sanchitha Dinesh on 2/22/20.
//  Copyright © 2020 Sanchitha. All rights reserved.
//

import SwiftUI
import SwiftUICharts

struct Transactions: View {
    var body: some View {
        VStack {
            
            Text("Transactions")
                .font(.largeTitle)
                .fontWeight(.bold)
            .multilineTextAlignment(.leading)
            List {
            LineChartView(data: [8,23,54,32,12,37,7,23,43], title: "Food", legend: "Food", form:  ChartForm.detail, dropShadow: false)
                .padding()
            
            LineChartView(data: [30,10,6,32,1,37,47,10,15], title: "Rent", legend: "Rent", form:  ChartForm.detail, dropShadow: false)
                .padding()
            
            LineChartView(data: [48,10,85,23,1,32, 52 ,10,14], title: "Water/Electricity", legend: "Water/Electricity", form:  ChartForm.detail, dropShadow: false)
                .padding()
            
            LineChartView(data: [39,39,6,39,89,22,5,10,15], title: "Transportation", legend: "Transportation", form:  ChartForm.detail, dropShadow: false)
                .padding()
            LineChartView(data: [30,10,6,32,1,37,47,10,15], title: "Entertainment", legend: "Entertainment", form:  ChartForm.detail, dropShadow: false)
                .padding()
            LineChartView(data: [30,10,6,32,1,37,47,10,15], title: "Other", legend: "Other", form:  ChartForm.detail, dropShadow: false)
                .padding()
            }
            }
        }
    }


struct Transactions_Previews: PreviewProvider {
    static var previews: some View {
        Transactions()
    }
}
