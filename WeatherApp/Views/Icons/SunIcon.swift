//
//  SunIcon.swift
//  WeatherApp
//
//  Created by M Black on 5/20/23.
//

import SwiftUI

struct SunIcon: View {
    var body: some View {
        VStack {
            Image("sun")
                .resizable()
                .frame(width: 400, height: 400)
            HStack {
                Text("Rise")
                    .padding()
                    
                Spacer()
                Text("Set")
                    .padding()
            }
        }
        .background(Color(hue: 0.649, saturation: 0.752, brightness: 0.7))
        .preferredColorScheme(.dark)
    }
}

struct SunIcon_Previews: PreviewProvider {
    static var previews: some View {
        SunIcon()
    }
}
