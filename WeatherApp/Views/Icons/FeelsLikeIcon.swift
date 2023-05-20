//
//  FeelsLikeIcon.swift
//  WeatherApp
//
//  Created by M Black on 5/20/23.
//

import SwiftUI

struct FeelsLikeIcon: View {
    var temp: Double
    var body: some View {
        VStack {
            HStack {
                Text(temp.kelvinToFarenheit())
                    .font(.system(size: 40))
                .fontWeight(.bold)
                Text("°")
                    .font(.system(size: 40))
                    .fontWeight(.light)
            }
            HStack {
                Text("Feels Like")
                    .font(.system(size: 11))
                Image(systemName: "thermometer.medium")
                    .font(.system(size: 10))
            }
        }
        .padding()
        .background(Color(hue: 0.649, saturation: 0.752, brightness: 0.7))
        .preferredColorScheme(.dark)
        .cornerRadius(10)
        .frame(maxWidth: 130, maxHeight: 150)
    }
}

struct FeelsLikeIcon_Previews: PreviewProvider {
    static var previews: some View {
        FeelsLikeIcon(temp: 300.6)
    }
}
