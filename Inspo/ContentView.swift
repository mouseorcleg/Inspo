//
//  ContentView.swift
//  Inspo
//
//  Created by Maria Kharybina on 29/12/2022.
//

import SwiftUI

struct ContentView: View {

    @StateObject var viewModel: ContentViewModel = ContentViewModel()
    @State private var rotation = 0.0
    
    var body: some View {
        
        ScrollView {
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
                        Image("pictureFrame")
                            .resizable()
                            .scaledToFit()
                            .aspectRatio(contentMode: .fit)
                            .rotationEffect(.degrees(rotation))
                    }
                    Spacer()
                    
    //                Button {
    //                    withAnimation(Animation
    //                        .spring()
    //                        .repeatCount(1)
    //                    ) {
    //                        Task{
    //                            await viewModel.getPaintingForTheView()
    //                        }
    //
    //                        self.rotation += 360
    //                    }
    //
    //                } label: {
    //                    ZStack{
    //                        Circle()
    //                            .fill(Color.theme.accent)
    //                            .frame(height: 150)
    //                            .overlay {
    //                                Text("Pull for inspo")
    //                                    .font(.title3)
    //                                    .foregroundColor(.primary)
    //                        }
    //                    }
    //                }
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
                Spacer()
                Spacer()
                Spacer()
                }
            }
        }
        .refreshable {
            withAnimation(Animation
                                    .spring()
                                    .repeatCount(1)
                                ) {
                                    Task{
                                        await viewModel.getPaintingForTheView()
                                    }
            
                                    self.rotation += 360
                                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
