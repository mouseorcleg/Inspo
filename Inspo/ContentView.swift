//
//  ContentView.swift
//  Inspo
//
//  Created by Maria Kharybina on 29/12/2022.
//

import SwiftUI

struct ContentView: View {
    @State var isRotating: Bool = false
    let timing: Double = 1.0
    
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
                    .rotationEffect(Angle(degrees: isRotating ? 540 : 0))
//                    .offset(y: isRotating ? 100 : 0)
                    
                
                Spacer()
                
                Button {
                    withAnimation(Animation
                        .spring()
//                        .easeInOut(duration: timing)
//                        .spring(response: timing, dampingFraction: 0.8)
//                        .repeatCount(1, autoreverses: true)
                    ) {
                        isRotating.toggle()
                    }
                    
                } label: {
                    ZStack{
                        Circle()
                            .fill(Color.theme.accent)
                            .frame(height: 150)
                            .overlay {
                                Text("Pull for inspo")
                                    .font(.title3)
                                    .foregroundColor(.primary)
                            }
                        
                        
                    }
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
