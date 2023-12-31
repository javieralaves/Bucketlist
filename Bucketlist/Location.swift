//
//  Location.swift
//  Bucketlist
//
//  Created by Javier Alaves on 3/8/23.
//

import CoreLocation
import Foundation

struct Location: Identifiable, Codable, Equatable {
    var id: UUID
    var name: String
    var description: String
    let latitude: Double
    let longitude: Double
    
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    static let example = Location(id: UUID(),
                                  name: "Buckingham Palace",
                                  description: "Where Queen Elizabeth lives with her dorgis",
                                  latitude: 51.501,
                                  longitude: -0.141)
    
    // To compare locations by their ID
    static func ==(lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
}
