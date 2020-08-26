//
//  InfoItem.swift
//  MedicalApp
//
//  Created by Raphael Cerqueira on 26/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import Foundation

struct InfoItem: Identifiable {
    let id = UUID().uuidString
    let imageName: String
    let title: String
    let subtitle: String
}

let infoData = [
    InfoItem(imageName: "map", title: "5.04", subtitle: "km"),
    InfoItem(imageName: "timer", title: "0h 58m", subtitle: "walking"),
    InfoItem(imageName: "flame", title: "460", subtitle: "cal")
]
