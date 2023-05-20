//
//  Extensions.swift
//  WeatherApp
//
//  Created by M Black on 5/18/23.
//

import Foundation

extension Double {
    func roundDouble() -> String {
        return String(format: "%.0f", self)
    }
    
    func kelvinToFarenheit() -> String {
        return ((self - 273.15) * 9.0/5.0 + 32).roundDouble()
    }
}
