//
//  HumidityIcon.swift
//  WeatherApp
//
//  Created by M Black on 5/20/23.
//

import SwiftUI

struct HumidityIcon: View {
    var weather: ResponseBody
    var body: some View {
        VStack {
            Text(weather.main.humidity.roundDouble())
                .font(.system(size: 75))
                .fontWeight(.bold)
            HStack {
                Text("Humidity")
                Image(systemName: "drop")
            }
        }
        .padding()
        .background(Color(hue: 0.681, saturation: 0.834, brightness: 0.423))
        .preferredColorScheme(.dark)
        .cornerRadius(10)
    }
}

struct HumidityIcon_Previews: PreviewProvider {
    static var previews: some View {
        HumidityIcon(weather: previewWeather)
    }
}
