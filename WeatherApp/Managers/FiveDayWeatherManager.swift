//
//  FiveDayWeatherManager.swift
//  WeatherApp
//
//  Created by M Black on 5/20/23.
//

import Foundation
import CoreLocation

class FiveDayWeatherManager {
    func getFutureWeather(latitude: CLLocationDegrees, longitude: CLLocationDegrees) async throws -> ResponseBody{
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/forecast?lat=\(latitude)&lon=\(longitude)&appid=\("30f263ac78bd7dd46408470694b6d81c")") else {fatalError("Missing URL")}
        
        let urlRequest = URLRequest(url: url)
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else {fatalError("Error getting weather Data")}
        
        let decodedData = try JSONDecoder().decode(ResponseBody.self, from: data)
        
        return decodedData
    }
    
    
}
