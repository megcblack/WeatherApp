//
//  WelcomeView.swift
//  WeatherApp
//
//  Created by M Black on 5/18/23.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    
    @EnvironmentObject var locationManager: LocationManager
    var body: some View {
        VStack {
            Image("clouds")
                .resizable()
                .frame(width: 100, height: 100)
            VStack (spacing: 20) {
                Text("Welcome to the")
                    .font(.subheadline)
                    .fontWeight(.light)
                    .padding(.bottom, -10.0)
                
                Text("Weather App")
                    .bold().font(.largeTitle)
                    .padding(.top, -10)
                Text("Please share your current location to get the weather in your area")
                    .font(.subheadline)
                    .fontWeight(.light)
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
