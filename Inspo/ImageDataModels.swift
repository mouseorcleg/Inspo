//
//  DataModel.swift
//  Inspo
//
//  Created by Maria Kharybina on 04/01/2023.
//

import Foundation

struct ImageFromHarvard: Decodable {
    let records: [Record]

    struct Record: Decodable {
        let alttext: String?
        let baseimageurl: String
    }
}

struct ImageUIModel: Codable {
    let image: String
    let alttext: String
    
    static func from(image: String = "-", alttext: String = "-") -> ImageUIModel {
        return ImageUIModel(image: image, alttext: alttext)
    }
    
    static func from(model: ImageFromHarvard) -> ImageUIModel {
        return ImageUIModel(image: model.records.first!.baseimageurl,
                            alttext: model.records.first?.alttext ?? "Sorry, there is no alt text for this painting yet")
    }
}
