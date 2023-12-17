//
//  ContentView.swift
//  RGPSwiftUI
//
//  Created by Nikolai Grachev on 15.12.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var redSlierValue = 0.0
    @State var greenSliderValue = 0.0
    @State var blueSLiderValue = 0.0
    
    @State var colorView = CGColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
    
    var body: some View {
        ZStack {
            Color(red: 0.93, green: 0.48, blue: 0.42)
                .ignoresSafeArea()
            
            VStack(spacing: 45){
                ColorView(colorView: $colorView)
                VStack(spacing: 20) {
                    SliderView(value: $redSlierValue, action: changeColor, color: .red)
                    SliderView(value: $greenSliderValue, action: changeColor, color: .green)
                    SliderView(value: $blueSLiderValue, action: changeColor, color: .blue)
                }
                Spacer()
            }
            .padding()
        }
    }
    
    private func changeColor() {
        colorView = CGColor(
            red: redSlierValue / 255,
            green: greenSliderValue / 255,
            blue: blueSLiderValue / 255,
            alpha: 1.0
        )
    }
}

#Preview {
    ContentView()
}

