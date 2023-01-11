//
//  ContentView.swift
//  TrafficLightUI
//
//  Created by Ярослав Кочкин on 10.01.2023.
//

import SwiftUI


enum TrafficLightType {
    case red, yellow, green
}

struct ContentView: View {
    
    @State var redCircle = ColorCircleView(color: .red)
    @State var yellowCircle = ColorCircleView(color: .yellow)
    @State var greenCircle = ColorCircleView(color: .green)
    @State private var trafficLight: TrafficLightType = .red
    
    private let lightInOff: CGFloat = 0.3
    private let lightInOn: CGFloat = 1.0

    
    var body: some View {
        VStack {
            redCircle
            yellowCircle
            greenCircle
            Button(action: {
                switch trafficLight {
                case .red:
                    trafficLight = .yellow
                    redCircle.opacity(lightInOn)
                case .yellow:
                    trafficLight = .green

                case .green:
                    trafficLight = .red

                }
            }) {
                Text("Next")
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
