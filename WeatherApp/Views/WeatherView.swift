//
//  WeatherView.swift
//  WeatherApp
//
//  Created by M Black on 5/18/23.
//

import SwiftUI

struct WeatherView: View {
    var weather: ResponseBody
    var body: some View {
        ZStack(alignment: .leading) {
            VStack {
                HStack {
                    VStack (alignment: .leading, spacing: 5) {
                        Text(weather.name)
                            .font(.title)
                            .fontWeight(.bold)
                        Text("Today \(Date().formatted(.dateTime.month().day().hour().minute()))")
                            .font(.subheadline)
                            .fontWeight(.light)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Spacer()
                    
                    Text(weather.main.temp.kelvinToFarenheit() + "°")
                        .font(.system(size: 65))
                        .fontWeight(.bold)
                        .padding(.trailing, -3.0)
                }
                .padding(.bottom)
                
                CurrentWeatherIcon(weather: weather.weather[0].description)
                    .shadow(radius: 7)
                
                
                HStack (spacing: 6) {
                    FeelsLikeIcon(temp: weather.main.feelsLike)
                        .shadow(radius: 7)
                    BlockIcon(number: weather.wind.speed, title: "Wind Speed", imageName: "wind", unit: "mph")
                        .shadow(radius: 7)
                    BlockIcon(number: weather.main.humidity, title: "humidity", imageName: "drop", unit: "%")
                        .shadow(radius: 7)
                }
                .padding(-10)
                
                Spacer()
                
                
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .edgesIgnoringSafeArea(.bottom)
        .background(Color(hue: 0.681, saturation: 0.834, brightness: 0.423))
        .preferredColorScheme(.dark)

    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weather: previewWeather)
    }
}
