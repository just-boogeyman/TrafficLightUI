//
//  ColorCircleView.swift
//  TrafficLightUI
//
//  Created by Ярослав Кочкин on 10.01.2023.
//

import SwiftUI


struct ColorCircleView: View {
    let color: Color
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 120, height: 120)
            .overlay(Circle().stroke(Color.black, lineWidth: 3))
            .opacity(0.3)
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .red)
    }
}
