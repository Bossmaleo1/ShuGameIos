//
//  ContentView.swift
//  Shuzi
//
//  Created by Sidney MALEO on 09/01/2024.
//

import SwiftUI

struct MainView: View {
    @Environment(GameViewModel.self) var gVM
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            
            Button("Joy", action:  {
                gVM.randomExpressionOfJoy()
            })
            .padding()
            
            Button("Incorrect Answers", action:  {
                gVM.incorrectSound()
            })
            .padding()
        }
        .padding()
    }
}

#Preview {
    MainView()
        .environment(GameViewModel())
}
