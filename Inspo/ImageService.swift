//
//  ImageService.swift
//  Inspo
//
//  Created by Maria Kharybina on 04/01/2023.
//

import Foundation

class NetworkingError: Error {
    let message: String
    init(message: String) {
        self.message = message
    }
}

class ImageService {
    private let startpoint = "https://api.harvardartmuseums.org/image"
    private let key = "610bcbb2-9178-498a-ac77-4842638ee8c5"
    private let fields = "baseimageurl,alttext"
    private var classification = "Painting"
    
    private func generateURL() -> URL? {
        return URL(string: "\(startpoint)?apikey=\(key)&fields=\(fields)&sort=random&size=1&classification=\(classification)")
    }
    
    func getPainting() async -> Result<ImageFromHarvard, NetworkingError> {
        guard let url = generateURL() else {
            return .failure(NetworkingError(message: "Can't generate URL :( Sorry!"))
        }
        
        do {
            let (data, response) = try await URLSession.shared.data(from: url)
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                return .failure(NetworkingError(message: "Can't get data from the URL"))
            }
            let model = try JSONDecoder().decode(ImageFromHarvard.self, from: data)
            return .success(model)
        }
        catch DecodingError.dataCorrupted {
            return .failure(NetworkingError(message: "Can't decode JSON data"))
        }
        catch {
            return .failure(NetworkingError(message: "Smth went wrong. Don't know what tho"))
        }
    }
}
