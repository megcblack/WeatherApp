//
//  ContentView.swift
//  WeatherApp
//
//  Created by M Black on 5/16/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    var body: some View {
        VStack {
            
            
            if let location = locationManager.location {
                Text ("Your coordinates are: \(location.latitude) , \(location.longitude)")
            } else {
                if locationManager.isLoading {
                    LoadingView()
                } else {
                    WelcomeView().environmentObject(locationManager)
                }
            }
        }
        .background(Color(hue: 0.681, saturation: 0.834, brightness: 0.423))
        .preferredColorScheme(.dark)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
