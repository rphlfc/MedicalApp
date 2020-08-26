//
//  ProfileItem.swift
//  MedicalApp
//
//  Created by Raphael Cerqueira on 25/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import Foundation
import SwiftUI

struct ProfileItem: Identifiable {
    let id = UUID().uuidString
    let imageName: String
    let foregroundColor: Color
    let backgroundColor: Color
    let title: String
    let subtitle: String
}

let profileData: [ProfileItem] = [
    ProfileItem(imageName: "person.circle", foregroundColor: Color(#colorLiteral(red: 1, green: 0.4838908911, blue: 0.2880697846, alpha: 1)), backgroundColor: Color(#colorLiteral(red: 0.9978702664, green: 0.7935810685, blue: 0.713087976, alpha: 1)), title: "PERSONAL INFORMATION", subtitle: "Set your personal\ninformation"),
    ProfileItem(imageName: "nosign", foregroundColor: Color(#colorLiteral(red: 1, green: 0.8099384904, blue: 0.3203552067, alpha: 1)), backgroundColor: Color(#colorLiteral(red: 1, green: 0.9258704782, blue: 0.7263249755, alpha: 1)), title: "MEDICATIONS", subtitle: "Add and edit your\nmedications"),
    ProfileItem(imageName: "heart.fill", foregroundColor: Color(#colorLiteral(red: 0.8960953355, green: 0.3390086591, blue: 0.4001769423, alpha: 1)), backgroundColor: Color(#colorLiteral(red: 0.9577557445, green: 0.7360847592, blue: 0.7625936866, alpha: 1)), title: "HEALTH BACKGROUND", subtitle: "Things that may affect\nyour health")
]
