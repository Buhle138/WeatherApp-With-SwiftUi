//
//  ContentView.swift
//  WeatherApp
//
//  Created by Buhle Radzilani on 2024/05/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Get Coordinates"){
                Task{
                    let geocodingClient = GeocodingClient()
                    let weatherClient = WeatherClient()
                    let location = try! await geocodingClient.coordinateByCity(city: "Pretoria")
                    let weather = try! await  weatherClient.fetchWeather(location: location!)
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
