//
//  SunIcon.swift
//  WeatherApp
//
//  Created by M Black on 5/20/23.
//

import SwiftUI

struct SunIcon: View {
    var riseTime: Double
    var setTime: Double
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "sunrise")
                    .font(.system(size: 40))
                VStack {
                    Text("Rise")
                    Text("\(riseTime.toHoursAndMin())")
                }
            }
            Spacer()
            HStack {
                Image(systemName: "sunset")
                    .font(.system(size: 40))
                VStack {
                    Text("Set")
                    Text("\(setTime.toHoursAndMin())")
                }
            }
        }
        .padding()
        .background(Color(hue: 0.649, saturation: 0.752, brightness: 0.7))
        .preferredColorScheme(.dark)
        .cornerRadius(10)
        
        
        
    }
}

struct SunIcon_Previews: PreviewProvider {
    static var previews: some View {
        SunIcon(riseTime: 1661834187, setTime: 1661882248)
    }
}
