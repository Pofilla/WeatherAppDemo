//
//  WellcomeView.swift
//  WeatherDemo
//
//  Created by Reza Ahmadizadeh on 04/02/1403.
//

import SwiftUI
import CoreLocationUI

struct WellcomeView: View {
    @EnvironmentObject var locationManager: LocationManeger
    
    var body: some View {
        VStack {
            VStack(spacing: 20) {
                Text("Wellcome to the Weather App").bold().font(.title)
                Text("Please share your current location").padding()
            }
            .multilineTextAlignment(.center).padding()
            
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

struct WellcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WellcomeView()
    }
}
