//
//  ContentViewModel.swift
//  Inspo
//
//  Created by Maria Kharybina on 04/01/2023.
//

import Foundation

class ContentViewModel: ObservableObject {
    @Published var imageURL: URL = URL(string: "-")!
    @Published var imageAltText: String = ""
    
    func getPaintingForTheView() async {
        let result = await ImageRepository().fetchPaintingFromRepo()
        switch result {
        case .success(let model):
            self.imageURL = URL(string: model.image) ?? URL(string: "-")!
            self.imageAltText = model.alttext
        case .failure(let error):
            print("error: " + error.message)
        }
    }
}
