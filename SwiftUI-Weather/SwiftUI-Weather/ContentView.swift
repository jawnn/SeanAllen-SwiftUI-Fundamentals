//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Roberto Manese III on 9/20/23.
//

import SwiftUI

struct ContentView: View {

    @State private var isNight = false

    var body: some View {
        ZStack {

            BackgroundView(isNight: isNight)

            VStack {
                CityNameView(cityName: "Cupertino, CA")

                CurrentWeatherView(isNight: isNight, temperature: 76)

                HStack(spacing: 20) {

                    WeatherDayView(weatherData: WeatherData(dayOfWeek: "TUE",
                                                            imageName: "cloud.sun.fill",
                                                            temperature: 74))

                    WeatherDayView(weatherData: WeatherData(dayOfWeek: "WED",
                                                            imageName: "sun.max.fill",
                                                            temperature: 70))

                    WeatherDayView(weatherData: WeatherData(dayOfWeek: "THU",
                                                            imageName: "wind",
                                                            temperature: 66))

                    WeatherDayView(weatherData: WeatherData(dayOfWeek: "FRI",
                                                            imageName: "sunset.fill",
                                                            temperature: 60))

                    WeatherDayView(weatherData: WeatherData(dayOfWeek: "SAT",
                                                            imageName: "moon.stars.fill",
                                                            temperature: 55))
                }

                Spacer()

                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(buttonTitle: "Change Day Time", textColor: .blue, backgroundColor: .white)
                }



                Spacer()

            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {

    var weatherData: WeatherData

    var body: some View {
        VStack {
            Text(weatherData.dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)

            Image(systemName: weatherData.imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40, alignment: .center)

            Text("\(weatherData.temperature)°")
                .font(.system(size: 28, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {

    var isNight: Bool

    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea()
    }
}

struct CityNameView: View {

    var cityName: String

    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }

}

struct CurrentWeatherView: View {

    var isNight: Bool

    var temperature: Int

    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: isNight ? "moon.stars.fill" : "cloud.sun.fill")
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180, alignment: .center)

            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }

}
