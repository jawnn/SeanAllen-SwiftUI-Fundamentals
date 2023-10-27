//
//  Date+Ext.swift
//  Appetizers
//
//  Created by Roberto Manese III on 10/27/23.
//

import Foundation

extension Date {

    var eighteenYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -18, to: Date())!
    }

    var oneHundredTenYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -110, to: Date())!
    }

}
