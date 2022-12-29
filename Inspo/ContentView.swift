//
//  ContentView.swift
//  Inspo
//
//  Created by Maria Kharybina on 29/12/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("frame_placeholder")
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fit)
                .frame(height: 300)
            ZStack{
                Circle()
                    .fill(.orange)
                    .frame(width: 300, height: 100)
                    .scaledToFit()
                Text("Pull for inspo")
                    .font(.title3)
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
