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

