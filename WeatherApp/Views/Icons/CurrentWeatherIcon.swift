//
//  CurrentWeatherIcon.swift
//  WeatherApp
//
//  Created by M Black on 5/20/23.
//

import SwiftUI

struct CurrentWeatherIcon: View {
    var weather: String
    var body: some View {
        HStack {
            Text("Currently:")
            Spacer()
            Text(weather)
        }
        .padding()
        .fontWeight(.bold)
        .background(Color(hue: 0.649, saturation: 0.752, brightness: 0.7))
        .preferredColorScheme(.dark)
        .cornerRadius(10)
    }
}

struct CurrentWeatherIcon_Previews: PreviewProvider {
    static var previews: some View {
        CurrentWeatherIcon(weather: "rain")
    }
}
