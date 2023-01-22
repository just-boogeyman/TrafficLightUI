//
//  ColorCircleView.swift
//  TrafficLightUI
//
//  Created by Ярослав Кочкин on 10.01.2023.
//

import SwiftUI

struct ColorView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 120, height: 120)
            .opacity(opacity)
    }
}
