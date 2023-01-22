//
//  ContentView.swift
//  TrafficLightUI
//
//  Created by Ярослав Кочкин on 10.01.2023.
//

import SwiftUI

enum CurrentLight {
    case off, red, yellow, green
}

struct ContentView: View {
    
    @State private var buttonTitle = "Start"
    @State private var currentLight = CurrentLight.off

    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack(spacing: 20) {
                ColorView(
                    color: .red,
                    opacity: currentLight == .red ? 1 : 0.3
                )
                ColorView(
                    color: .yellow,
                    opacity: currentLight == .yellow ? 1 : 0.3
                )
                ColorView(
                    color: .green,
                    opacity: currentLight == .green ? 1 : 0.3
                )
                
                Spacer()
                
                Button(action: chenceColor) {
                    Text(buttonTitle)
                        .font(.title)
                        .foregroundColor(.cyan)
                }
                .padding(.bottom, 50)
            }
        }
    }
    
    private func chenceColor() {
        if buttonTitle == "Start" {
            buttonTitle = "Next"
        }
        switch currentLight {
        case .off: currentLight = .red
        case .red: currentLight = .yellow
        case .yellow: currentLight = .green
        case .green: currentLight = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
