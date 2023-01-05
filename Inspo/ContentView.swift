//
//  ContentView.swift
//  Inspo
//
//  Created by Maria Kharybina on 29/12/2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel: ContentViewModel = ContentViewModel()
    @State private var offset: CGSize = .zero
    
    
    var body: some View {
        
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                AsyncImage(url: viewModel.imageURL) { returnedImage in
                    returnedImage
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(20)
                        .frame(maxWidth: 500, maxHeight: 400)
                        .padding(10)
                } placeholder: {
                    ZStack{
                        ProgressView()
                        Image("pictureFrame")
                            .resizable()
                            .scaledToFit()
                            .aspectRatio(contentMode: .fit)
                    }
                }
                .offset(offset)
                
                Spacer()
                
                ZStack{
                    Circle()
                        .fill(Color.theme.accent)
                        .frame(height: 150)
                        .overlay {
                            Text("Pull for inspo")
                                .font(.title3)
                                .foregroundColor(.primary)
                        }
                        .offset(offset)
                        .gesture(
                            DragGesture()
                                .onChanged({ value in
                                    withAnimation(Animation
                                        .spring()
                                    ) {
                                        let translation = value.translation
                                        if translation.height > 0 {
                                            let verticalTranslation = min(translation.height, 200)
                                            withAnimation(.spring()) {
                                                offset = CGSize(width: 0, height: verticalTranslation)
                                            }
                                        }
                                    }
                                })
                                .onEnded({ value in
                                    Task {
                                        await viewModel.getPaintingForTheView()
                                    }
                                    withAnimation(.spring()) {
                                        offset = .zero
                                    }
                                    
                                    
                                })
                        )
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
