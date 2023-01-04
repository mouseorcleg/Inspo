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
