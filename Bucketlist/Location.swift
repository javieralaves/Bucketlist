//
//  Location.swift
//  Bucketlist
//
//  Created by Javier Alaves on 3/8/23.
//

import Foundation

struct Location: Identifiable, Codable, Equatable {
    let id: UUID
    var name: String
    var description: String
    let latitude: Double
    let longitude: Double
}
