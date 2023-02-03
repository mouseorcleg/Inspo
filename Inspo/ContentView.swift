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
    @State private var circleSize: CGFloat = 150
    @State private var isPulling: Bool = false
    @State private var isLoading: Bool = false
    @State private var isFirstScreen: Bool = true
    
    var body: some View {
        
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                if isPulling {
                    ProgressView()
                        .transition(AnyTransition.scale.animation(.spring()))
                    Spacer()
                }
                AsyncImage(url: viewModel.imageURL) { returnedImage in
                    returnedImage
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(20)
                        .frame(maxWidth: 500, maxHeight: 400)
                        .padding(10)
                        .shadow(radius: 10)
                        .onChange(of: viewModel.imageURL) { newValue in
                            isLoading = false
                        }
                } placeholder: {
                    ZStack{
                        if !isPulling && !isFirstScreen {
                            ProgressView()
                        }
                        Image("pictureFrame")
                            .resizable()
                            .scaledToFit()
                            .aspectRatio(contentMode: .fit)
                            .shadow(radius: 10)
                    }
                }
                .offset(offset)
                
                Spacer()
                
                ZStack{
                    Circle()
                        .fill(Color.theme.accent)
                        .shadow(radius: 40, x: 10, y: 20)
                        .overlay {
                            Text("PULL ME")
                                .fontWeight(.semibold)
                                .fontWidth(.expanded)
                                .foregroundColor(Color.theme.background)
                        }
                        .offset(offset)
                        .frame(height: circleSize)
                        .gesture(
                            DragGesture()
                                .onChanged({ value in
                                    isPulling = true
                                    isLoading = true
                                    isFirstScreen = false
                                    
                                    let translation = value.translation
                                    if translation.height > 0 {
                                        let verticalTranslation = min(translation.height, 200)
                                        withAnimation(.spring()) {
                                            offset = CGSize(width: 0, height: verticalTranslation)
                                            circleSize = 100
                                        }
                                    }
                                })
                                .onEnded({ value in
                                    Task {
                                        await viewModel.getPaintingForTheView()
                                    }
                                    withAnimation(.spring()) {
                                        offset = .zero
                                        circleSize = 150
                                    }
                                    isPulling = false
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
