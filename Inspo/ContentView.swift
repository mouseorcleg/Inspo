//
//  ContentView.swift
//  Inspo
//
//  Created by Maria Kharybina on 29/12/2022.
//

import SwiftUI

struct ContentView: View {
    @State var isRotating: Bool = false
    
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
                    .rotationEffect(Angle(degrees: isRotating ? 360 : 0))
                
                Spacer()
                
                Button {
                    withAnimation(.default) {
                        isRotating.toggle()
                    }
                    
                } label: {
                    ZStack{
//                        Color.theme.accent
//                            .scaledToFit()
//                            .frame(height: 150)
//                            .clipShape(Circle())
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
