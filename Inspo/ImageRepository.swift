//
//  ImageRepository.swift
//  Inspo
//
//  Created by Maria Kharybina on 04/01/2023.
//

import Foundation

protocol ImageRepo {
    func fetchImageFromRepo() async -> Result<ImageUIModel, NetworkingError>
}

class ImageRepository: ObservableObject, ImageRepo {
    
    private let imageService: ImageService
    
    init(imageService: ImageService) {
        self.imageService = imageService
    }
    
    func fetchImageFromRepo() async -> Result<ImageUIModel, NetworkingError> {
        let result = await imageService.getPainting()
        switch result {
        case .success(let model):
            return .success(ImageUIModel.from(model: model))
        case .failure(let failure):
            return .failure(NetworkingError(message: "\(failure)"))
        }
    }
    
    
}
