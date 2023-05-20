//
//  BlockIcon.swift
//  WeatherApp
//
//  Created by M Black on 5/20/23.
//

import SwiftUI

struct BlockIcon: View {
    var number: Double
    var title: String
    var imageName: String
    var body: some View {
        VStack {
            Text(number.roundDouble())
                .font(.system(size: 50))
                .fontWeight(.bold)
            HStack {
                Text(title)
                    .font(.system(size: 12))
                Image(systemName: imageName)
            }
        }
        .padding()
        .background(Color(hue: 0.649, saturation: 0.752, brightness: 0.7))
        .preferredColorScheme(.dark)
        .cornerRadius(10)
        .frame(maxWidth: 130, maxHeight: 150)
    }
}

struct BlockIcon_Previews: PreviewProvider {
    static var previews: some View {
        BlockIcon(number: 64.4, title: "humidity", imageName: "drop")
    }
}
