//
//  ColorView.swift
//  RGPSwiftUI
//
//  Created by Nikolai Grachev on 15.12.2023.
//

import SwiftUI

struct ColorView: View {
    
    @Binding var colorView: CGColor
    
    var body: some View {
        Rectangle()
            .frame(height: 180)
            .foregroundStyle(Color(cgColor: colorView))
            .clipShape(RoundedRectangle(cornerRadius: 30))
            .overlay(RoundedRectangle(cornerRadius: 30).stroke(.white, lineWidth: 4))
    }
}

#Preview {
    ColorView(colorView: .constant(CGColor(red: 100/255, green: 100/255, blue: 100/255, alpha: 1)))
}
