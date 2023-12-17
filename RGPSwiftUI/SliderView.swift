//
//  SliderView.swift
//  RGPSwiftUI
//
//  Created by Nikolai Grachev on 15.12.2023.
//

import SwiftUI

struct SliderView: View {
    
    @Binding var value: Double
 
    let action: () -> Void
    let color: Color
    
    var body: some View {
        
        Slider(
            value: $value,
            in: 0...255,
            step: 1)
        {
            Text("Slider")
        } minimumValueLabel: {
            Text(value.formatted())
                .foregroundStyle(color)
                .padding(3)
                .frame(width: 50, height: 20)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 5))
            
        } maximumValueLabel: {
            Text("255")
                .foregroundStyle(color)
                .padding(3)
                .frame(width: 50, height: 20)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 5))
        }
        .onChange(of: value) {
            action()
            }
        .padding(8)
    }
}

#Preview {
    
    SliderView(value: .constant(5), action: {}, color: .red)
}


