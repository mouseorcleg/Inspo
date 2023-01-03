//
//  ContentView.swift
//  Inspo
//
//  Created by Maria Kharybina on 29/12/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("pictureFrame")
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                ZStack{
                    Color.theme.accent
                        .scaledToFit()
                        .frame(height: 150)
                        .clipShape(Circle())
                        
                    Text("Pull for inspo")
                        .font(.title3)
                }
            Spacer()
            Spacer()
            Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
